using System;
using System.Collections.Generic;
using System.Drawing;
using System.Drawing.Imaging;
using System.IO;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace ImageClipper
{
	class Program
	{
		[STAThread]
		static void Main(string[] args)
		{
			// コマンドライン引数
			// [0] :カレントパス
			if(!(Directory.Exists(args[0]))) return;

			var img = Clipboard.GetImage();
			
			// 画像チェック
			if (img == null) return;

			var fileName = DateTime.Now.ToString("yyyy-MMdd-HHmmss") + ".png";
			var savePath = Path.Combine(args[0], fileName);
			img.Save(savePath, ImageFormat.Png);
		}

	}
}
