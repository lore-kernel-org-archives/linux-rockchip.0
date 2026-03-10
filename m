Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5A48EFCD9F
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Mar 2026 09:30:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ce4rf7DPOV7RQvsIrftAitHCBzXzlYyWnaCJGmWjmm0=; b=AP/D1DBCyigq6z
	dxyJ3pkRilC7nkSP6M3lPN/f8rnEGJEWbw50PnXLzZ95GEql4uBO1GEDyXElV5PG4ZWPA0qwSllIc
	v4OjU9o4WkY6kE+UPyo66TciwefAkj9gHcTr4ZZ6uYTdV42rkjpdAsO4qoh8/JSBDyl6XPGVfpm0A
	c2lob2CNTrEEN7uGqewKZ6NPVCQlCYbq/zjTZZLBG5H6bXDbjdbGs7Rz19M+fM/2U6BCxb6hVoTQc
	l+/EBLp73PCyS3NfG/Ywn00UlgEx+hPV1IjN5nlyUmcgBy7R/Nn8Lic5Q3o9mayU0a1J0b4NcGlCC
	V2pz2FMmfaFArKWoSgbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vztPs-000000095ow-3BFv;
	Tue, 10 Mar 2026 09:30:16 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vztPn-000000095mB-2I5b;
	Tue, 10 Mar 2026 09:30:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=295Eju0p2WbkYSgU8MIR85cU967byrAnLTlZcHA3YXk=; b=eLVnuY5zmPpyUTWbS6y0/dU5OF
	XGWbKoljOz0uqoeQnZVGR9Rmhzm3Jx5TgL2OS/3QmdnC5P5WzRHUknUOh3fH0lp9l/b+TZwfDy2pX
	3MZ3d6kYOk4zju2ORWX1u5oPWgf+tY3gLTZtokc+taLc+DyfsNl/1l2WuFMRohwhhy0K93lRUQaEp
	fOmVKJRiEnLr471bv052BoGwQtmF3vHrbw7UVZAYQ/gp8mOGh6coCxAy4dA+jb536WJGFfMUrZwr6
	ZwqfCoVapsv0Y2aM+3wjcX0TcQtQFaM1SL739EzqCNIW+WSwfx0/BYxOdalj64Vc7qSfN9KVNjVpb
	OUyk8p6Q==;
Received: from gloria.sntech.de ([185.11.138.130])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vztPk-0000000E7n4-0CXc;
	Tue, 10 Mar 2026 09:30:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=295Eju0p2WbkYSgU8MIR85cU967byrAnLTlZcHA3YXk=; b=zLaS+svAn7jCcZqIleOnjVYEMO
	rHAQEgFUR3vm8bRgUDFWbdf4gPawnQWLoppSFax09jr36egDvBoEwQJv9m4xke/sef2srokqSl8Bf
	fHuUDCvbA00MG3/BXE301Jqb4sWf9vCy6SgH+hlCnoAyyQLSHcbdz0h+Z4DkARdCz63pmGmMLnp9w
	Mr1DNyOAYt697MbhIkophblOK3do1RrCx/LN3H7vSGi96KFzxcMffzeGSfWQ24SPYkDNk/X0irOlA
	UrZ7p7GOP3c8GEzTiqnMuXIUZFyMD4cc+4lITUbK5B3unMIUqS4fm3fnQrnZTvZTj7BP3rHAsnAXC
	gR9v0Qfg==;
From: Heiko Stuebner <heiko@sntech.de>
To: Fabio Estevam <festevam@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/3] ARM: dts: rockchip: Describe the touchscreen interrupt on rk3288-phycore-rdk
Date: Tue, 10 Mar 2026 10:29:53 +0100
Message-ID: <177313498975.2340533.15820241073630283765.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260303193855.828892-1-festevam@gmail.com>
References: <20260303193855.828892-1-festevam@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260310_093008_348408_BC2912B5 
X-CRM114-Status: UNSURE (   9.68  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


On Tue, 03 Mar 2026 16:38:53 -0300, Fabio Estevam wrote:
> According to the phyCORE - RK3288 Hardware Manual, GPIO5_B4 corresponds to
> the touchscreen interrupt line:
> 
> https://www.phytec.eu/fileadmin/legacy/downloads/Manuals/L-826e_1.pdf
> 
> Describe it to improve the devicetree representation.
> 
> [...]

Applied, thanks!

[1/3] ARM: dts: rockchip: Describe the touchscreen interrupt on rk3288-phycore-rdk
      commit: adf54d9282e8071da6c8774ac104dc00f78451c8
[2/3] ARM: dts: rockchip: Improve the RTC description on rk3288-firefly-reload
      commit: 30b0084d438012083024feffa40ca1af8e1c096a
[3/3] ARM: dts: rockchip: Improve GMAC description n RK3288 boards
      commit: bd60d32070916c471ba5a212261746ad69a292eb

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
