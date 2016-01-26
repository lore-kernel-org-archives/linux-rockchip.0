From: Alexander Kochetkov <al.kochet@gmail.com>
Subject: Re: [PATCH] clk: rockchip: Reparent hclk_rom, hclk_i2s0 and hclk_spdif to hclk_cpubus on RK3066/RK3188
Date: Tue, 26 Jan 2016 16:16:57 +0300
Message-ID: <0F6CFF20-C3D2-4A4D-83D5-1DE6014BB75D@gmail.com>
References: <1453812250-11819-1-git-send-email-al.kochet@gmail.com> <18195479.b78tX8z5U3@diego>
Mime-Version: 1.0 (Mac OS X Mail 9.2 \(3112\))
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <stable-owner@vger.kernel.org>
In-Reply-To: <18195479.b78tX8z5U3@diego>
Sender: stable-owner@vger.kernel.org
To: =?utf-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: stable@vger.kernel.org, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org


> 26 =D1=8F=D0=BD=D0=B2. 2016 =D0=B3., =D0=B2 16:04, Heiko St=C3=BCbner=
 <heiko@sntech.de> =D0=BD=D0=B0=D0=BF=D0=B8=D1=81=D0=B0=D0=BB(=D0=B0):
>=20
> Can you instead try to add hclk_cpubus to the critical clock list ple=
ase?

Yes, adding hclk_cpubus to rk3188_critical_clocks also fixes problem.
So, I=E2=80=99ll send another patch now.

Thank, you.
