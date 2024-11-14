Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6FD4D6A254
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Nov 2024 22:42:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UMzvzGIGvq7M0vXFcLSe8WC+rA2YwMVJZPekp81XIu8=; b=EGr1T2J53ffu9U
	UQ3xZnZr9M5IErAUcP5rhahBNV7rlFcaNA7bfrLsIu94JHV9RYP2Zzgdj3wkK6z63dS44aI/Kv6XN
	K4tqt80gwt5Vrgdf/ZelDZ4aftkVaRW5fQiNrLicDl9qsRKHH5N0lWybGUETYH/lhamlD2DIQh+Mk
	/kWY6VQYMAyzG4iDb/5W1EGPeX4EaX+IKXbGgJkVdBHdyPu1EfITAr/wzhKdRlKDNixHK0yppOMHL
	SVEup0hGQmmD9DeX+z0tp3CZ3/wz6W2Pdp7steF6uIOoB5HONFb3rrr3rgrsri+E4pT/mGvpErrum
	i0LdA0faTnUcg1uQ9/eA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tBiXi-000000010nu-1Zbo;
	Thu, 14 Nov 2024 22:42:26 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tBiUI-0000000108p-2O96
	for linux-rockchip@lists.infradead.org;
	Thu, 14 Nov 2024 22:38:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=D1XsaCqkWwRR6XrSHEGg6TIaTIM6VeYXYn+FOkXw2fo=; b=0IgtVFVTHwai0AsNOcCKn+UeX+
	sLf41k6IavnOXl6Wv4PLk/LOxR0K7BoFeJ1Fl1+rGmNJQoi6XmYEpiua3zNrNi+XDm6kqrjzpkuH5
	rC3bzvyHrOXPx6EDJYeB8A1zOOCN2OlE3ml3DOIzkPROH8jwnWXATxiYZEc8Vt+xQCZykqOnnsqaI
	BmkUHw7nDL8sWoSpEVG/NjruAZ3Jbkj2Fp0PMKPc0IVHTjIXB5aFfhG5B9kHoSGAJVIZ+dS+6ehG3
	vimO7+9Ql8j1KCHsfuAvAC5s3i1lSsmnEqlNsewiWglcOmnH6BXaQgcwnB9dDIaDsrG+scOiAAtze
	c+uYY/7Q==;
Received: from i53875a30.versanet.de ([83.135.90.48] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tBiU0-0006Ij-KJ; Thu, 14 Nov 2024 23:38:36 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: mturquette@baylibre.com, Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: [GIT PULL] Rockchip clock changes for 6.13 #1
Date: Thu, 14 Nov 2024 23:38:35 +0100
Message-ID: <3061836.mvXUDI8C0e@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241114_143854_637335_764179A0 
X-CRM114-Status: UNSURE (   8.25  )
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

Hi Mike, Stephen,

please find below a pull-request with one Rockchip clock change for 6.13

Please pull.

Thanks
Heiko


The following changes since commit 9852d85ec9d492ebef56dc5f229416c925758edc:

  Linux 6.12-rc1 (2024-09-29 15:06:19 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v6.13-rockchip-clk1

for you to fetch changes up to 5011cc7ad9aeea98029385f8a0e81a0ebfc45bed:

  dt-bindings: clock: convert rockchip,rk3328-cru.txt to YAML (2024-10-08 21:11:29 +0200)

----------------------------------------------------------------
YAML conversion of the rk3328 clock controller binding.

----------------------------------------------------------------
Johan Jonker (1):
      dt-bindings: clock: convert rockchip,rk3328-cru.txt to YAML

 .../bindings/clock/rockchip,rk3328-cru.txt         | 58 -----------------
 .../bindings/clock/rockchip,rk3328-cru.yaml        | 74 ++++++++++++++++++++++
 2 files changed, 74 insertions(+), 58 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3328-cru.txt
 create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3328-cru.yaml




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
