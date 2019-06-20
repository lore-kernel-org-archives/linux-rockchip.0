From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH v4 4/6] rockchip: rk3399: Get bl31.elf via BL31
Date: Thu, 20 Jun 2019 15:37:38 +0530
Message-ID: <20190620100740.6560-5-jagan@amarulasolutions.com>
References: <20190620100740.6560-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190620100740.6560-1-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>, Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Right now rockchip platform need to copy bl31.elf into u-boot
source directory to make use of building u-boot.itb.

So, add environment variable BL31 like Allwinner SoC so-that the
bl31.elf would available via BL31.

If the builds are not exporting BL31 env, the make_fit_atf.py
explicitly create dummy bl31.elf in u-boot root directory to
satisfy travis builds and it will show the warning on console as

 WARNING: BL31 file bl31.elf NOT found, resulting binary is non-functional
 WARNING: Please read Building section in doc/README.rockchip

Note, that the dummy bl31 files were created during not exporting
BL31 case would be removed via clean target in Makefile.

Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
---
 Makefile                               |  2 +-
 arch/arm/mach-rockchip/make_fit_atf.py | 20 ++++++++++++++++++--
 doc/README.rockchip                    |  4 ++--
 3 files changed, 21 insertions(+), 5 deletions(-)

diff --git a/Makefile b/Makefile
index a503ab9fc1..3ede10ff68 100644
--- a/Makefile
+++ b/Makefile
@@ -1848,7 +1848,7 @@ clean: $(clean-dirs)
 		-o -name 'dsdt.aml' -o -name 'dsdt.asl.tmp' -o -name 'dsdt.c' \
 		-o -name '*.efi' -o -name '*.gcno' -o -name '*.so' \) \
 		-type f -print | xargs rm -f \
-		bl31_*.bin image.map
+		bl31.c bl31.elf bl31_*.bin image.map
 
 # mrproper - Delete all generated files, including .config
 #
diff --git a/arch/arm/mach-rockchip/make_fit_atf.py b/arch/arm/mach-rockchip/make_fit_atf.py
index 212bd0a854..e7d3846a13 100755
--- a/arch/arm/mach-rockchip/make_fit_atf.py
+++ b/arch/arm/mach-rockchip/make_fit_atf.py
@@ -12,6 +12,7 @@
 import os
 import sys
 import getopt
+import logging
 
 # pip install pyelftools
 from elftools.elf.elffile import ELFFile
@@ -89,13 +90,17 @@ def append_conf_section(file, cnt, dtname, segments):
     file.write('\t\tconfig_%d {\n' % cnt)
     file.write('\t\t\tdescription = "%s";\n' % dtname)
     file.write('\t\t\tfirmware = "atf_1";\n')
-    file.write('\t\t\tloadables = "uboot",')
+    file.write('\t\t\tloadables = "uboot"')
+    if segments != 0:
+        file.write(',')
     for i in range(1, segments):
         file.write('"atf_%d"' % (i))
         if i != (segments - 1):
             file.write(',')
         else:
             file.write(';\n')
+    if segments == 0:
+        file.write(';\n')
     file.write('\t\t\tfdt = "fdt_1";\n')
     file.write('\t\t};\n')
     file.write('\n')
@@ -171,8 +176,19 @@ def generate_atf_binary(bl31_file_name):
 
 def main():
     uboot_elf = "./u-boot"
-    bl31_elf = "./bl31.elf"
+    bl31_elf = os.path.isfile("./bl31.elf")
     fit_its = sys.stdout
+    if bl31_elf:
+        bl31_elf = "./bl31.elf"
+    elif "BL31" in os.environ:
+        bl31_elf=os.getenv("BL31");
+    else:
+        os.system("echo 'int main(){}' > bl31.c")
+        os.system("${CROSS_COMPILE}gcc -c bl31.c -o bl31.elf")
+        bl31_elf = "./bl31.elf"
+        logging.basicConfig(format='%(levelname)s:%(message)s', level=logging.DEBUG)
+        logging.warning(' BL31 file bl31.elf NOT found, resulting binary is non-functional')
+        logging.warning(' Please read Building section in doc/README.rockchip')
 
     opts, args = getopt.getopt(sys.argv[1:], "o:u:b:h")
     for opt, val in opts:
diff --git a/doc/README.rockchip b/doc/README.rockchip
index 264f7e4994..5680c075fa 100644
--- a/doc/README.rockchip
+++ b/doc/README.rockchip
@@ -149,8 +149,8 @@ For example:
 	=> make realclean
 	=> make CROSS_COMPILE=aarch64-linux-gnu- PLAT=rk3399
 
-	(copy bl31.elf into U-Boot root dir)
-	=> cp build/rk3399/release/bl31/bl31.elf /path/to/u-boot
+	(export bl31.elf)
+	=> export BL31=/path/to/arm-trusted-firmware/build/rk3399/release/bl31/bl31.elf
 
    - Compile PMU M0 firmware
 
-- 
2.18.0.321.gffc6fa0e3
