From: Alex Dewar <alex.dewar@gmx.co.uk>
Subject: Asus C101P Chromeboot fails to boot with Linux 5.2
Date: Fri, 12 Jul 2019 16:00:21 +0100
Message-ID: <59042b09-7651-be1d-347f-0dc4aa02a91b@gmx.co.uk>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Hi all,

Since upgrading to the 5.2 kernel, my Chromebook is failing to boot. The
Asus C101P is based on the RK3399 SoC and uses the rk3399-gru-bob device
tree. It used to boot with the 5.1 kernel and mostly worked, with the
exception of broken suspend and resume.

When I try to boot the screen just gets flooded with messages like this:
http://users.sussex.ac.uk/~ad374/boot_fail.jpg

I'm using Arch Linux ARM's linux-aarch64 package, source here:
https://archlinuxarm.org/packages/aarch64/linux-aarch64/files/PKGBUILD

Best,
Alex
