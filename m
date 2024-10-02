Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A849DCF31B2
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Oct 2024 10:31:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ekOz34peaiRa/t7BvOAu1xDW6vpLUvvUjggolcFGcqw=; b=tSATHOBrGh0xbK
	E7fcSZqkJWyxCZBcFJOLH70PHOoXI627N5kcUF+v8L8Z+4He1cFkVsLfR+yr6IwKEi7vCAzQYYqs+
	zRec0VMcgFNctln+USDVFwIm9cb3mJpnVoW7MpjjXScVGsd0ZMj3j+eGSXDVapCthkvap0gXuPDav
	X1aj3hZOxlgs5ADwmvh0Xl5qvWRjHQnmTFzmldFaMtIEz6MShaJF+TQqfS/ei0SgPHW3gVTfshUva
	UQCGXeQE/el5K/6wQKQgTLUAMRlsuNPHsbRT/LI+eaaLbXP+eXf8VM8D9aKsn8z0+aE7qsBNqWk9K
	MfwLsPGRfXjFelQ0wFqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svwdf-00000005UwZ-4A0G;
	Wed, 02 Oct 2024 10:31:23 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svwdE-00000005Una-3tif
	for linux-rockchip@lists.infradead.org;
	Wed, 02 Oct 2024 10:30:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=otrwbxFHHS5kme0ZdQbLFNbZF4YdAPSUFswUHleDbGM=; b=NrEuxbJQNjOyA27xmWZWEpkrbx
	wu6VDhk2tX02rZf66e5LEKAb7WNsnE3na1mgcBvA4Zj+zsd5SwgYdTsbgu+sj5alZ9Nt/7gyX2eFm
	Xydpqngy7tpHpPUCuZqLJQx5010Ijzh7JbPDBDuydDe/lAc9uYBAoZ1jeag2vNLiz/mgwaBLEi98M
	gV7MipQyM0OSeuPAMB9Ttn7jJIiWJfiWXEZEsd+/iXD8CTRbzsSGSXtE83fcN4SiGkm2xVUWLhD18
	b7SrNp9zs1Cwae9CRXa6nk4lSToLpypjOhW5+8UgzX63vUAr17IClb92E81hram0KtwXOgSer0vcK
	Zy4VaQqw==;
Received: from i53875aa1.versanet.de ([83.135.90.161] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1svwdC-00057r-Di; Wed, 02 Oct 2024 12:30:54 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	jonas@kwiboo.se
Subject: Re: [PATCH v3] arm64: dts: rockchip: change pinctrl for pcie2x1l2 for Radxa ROCK 5A
Date: Wed,  2 Oct 2024 12:30:48 +0200
Message-ID: <172786503307.2125927.17265927214525486322.b4-ty@sntech.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241001235046.1710-1-naoki@radxa.com>
References: <20241001235046.1710-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241002_033056_997565_A6FFD386 
X-CRM114-Status: UNSURE (   9.90  )
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

On Tue, 1 Oct 2024 23:50:46 +0000, FUKAUMI Naoki wrote:
> for pcie2x1l2, only pcie20x1_2_perstn_m0 is required, and its function
> needs to be GPIO to avoid freeze at "pci enum" without PCIe device on
> u-boot.
> 
> change pinctrl definitions for pcie2x1l2. no functional change is
> intended on Linux kernel.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: change pinctrl for pcie2x1l2 for Radxa ROCK 5A
      commit: a86fca38c8129aac1cc7cec886e1eb306816b7d5

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
