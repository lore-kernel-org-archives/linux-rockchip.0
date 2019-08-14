From: Vicente Bergas <vicencb@gmail.com>
Subject: Re: kexec on rk3399
Date: Wed, 14 Aug 2019 14:53:55 +0200
Message-ID: <c6993a1e-6fc2-44ab-b59e-152142e2ff4d@gmail.com>
References: <ebcb52be-2063-4e2c-9a09-fdcacb94f855@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <ebcb52be-2063-4e2c-9a09-fdcacb94f855@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Felipe Balbi <balbi@kernel.org>, Robin Murphy <robin.murphy@arm.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Will Deacon <will.deacon@arm.com>, Marc Zyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>, Matthias Brugger <mbrugger@suse.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

On Monday, July 22, 2019 4:31:27 PM CEST, Vicente Bergas wrote:
> Hi, i have been running linux on rk3399 booted with kexec fine until 5.2
> From 5.2 onwards, there are memory corruption issues as reported here:
> http://lkml.iu.edu/hypermail/linux/kernel/1906.2/07211.html
> kexec has been identified as the principal reason for the issues.
>
> It turns out that kexec has never worked reliably on this platform,
> i was just lucky until recently.
>
> Please, can you provide some directions on how to debug the issue?

Thank you all for your suggestions on where the issue could be.

It seems that it was the USB driver.
Now using v5.2.8 booted with kexec from v5.2.8 with a workaround and
so far so good. It is being tested on the Sapphire board.

The workaround is:
--- a/drivers/usb/dwc3/dwc3-of-simple.c
+++ b/drivers/usb/dwc3/dwc3-of-simple.c
@@ -133,6 +133,13 @@
 =09return 0;
 }
=20
+static void dwc3_of_simple_shutdown(struct platform_device *pdev)
+{
+=09struct dwc3_of_simple *simple =3D platform_get_drvdata(pdev);
+
+=09reset_control_assert(simple->resets);
+}
+
 static int __maybe_unused dwc3_of_simple_runtime_suspend(struct device=20
*dev)
 {
 =09struct dwc3_of_simple=09*simple =3D dev_get_drvdata(dev);
@@ -190,6 +197,7 @@
 static struct platform_driver dwc3_of_simple_driver =3D {
 =09.probe=09=09=3D dwc3_of_simple_probe,
 =09.remove=09=09=3D dwc3_of_simple_remove,
+=09.shutdown=09=3D dwc3_of_simple_shutdown,
 =09.driver=09=09=3D {
 =09=09.name=09=3D "dwc3-of-simple",
 =09=09.of_match_table =3D of_dwc3_simple_match,

If this patch is OK after review i can resubmit it as a pull request.
Should a similar change be applied to drivers/usb/dwc3/core.c ?

Regards,
  Vicen=C3=A7.
