Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C53B7C433F5
	for <linux-rockchip@archiver.kernel.org>; Sun, 21 Nov 2021 18:52:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NRZAbaL6C7o4ePHrmnGNfd4XPxwkHH8yhS+mYKgknQ4=; b=4Gg4nzprqggwqa
	zK2CAdJOs5w83z3QrtOSO+OYxsCy/Kj4JFENgwyuy4DGvdlpX9gXQjnj6J7AivioINYSCVGMHBHxS
	+N7Gd46URSJ9xSmZcYr8DCoKI5kE97HGDPuv6lOhvuaWaR0AamsFzrXyrn9IFSeGCZClCrjE9F1Bz
	/AtIuz8Zj1V0XwTMYktAGrP/09ghpK842QmailpvPgRvmss4905NGF/1ktaFiIDHUDc488bqXaUeq
	1EhnHDWywp3cj63lhQtC5VJJGYU8KVQvbEdOu13hEWrcG41Hsy4ym5Y91GHGMR400c7g6DEGxOpxl
	kKC6aSXL3YUA7yKhx46g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1morxD-00EAev-ON; Sun, 21 Nov 2021 18:52:43 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1morwl-00EAUf-NI; Sun, 21 Nov 2021 18:52:18 +0000
Received: from ip5f5a6e92.dynamic.kabel-deutschland.de ([95.90.110.146]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1morwj-00086u-Qd; Sun, 21 Nov 2021 19:52:13 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: John Keeping <john@metanate.com>,
	linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 Andy Yan <andyshrk@gmail.com>, Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH 0/2] arm64: dts: rockchip: fix a couple of vin-supply typos
Date: Sun, 21 Nov 2021 19:52:09 +0100
Message-Id: <163752071859.2241976.8663955051690006845.b4-ty@sntech.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211102182908.3409670-1-john@metanate.com>
References: <20211102182908.3409670-1-john@metanate.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211121_105215_824844_7D91EDA3 
X-CRM114-Status: UNSURE (   9.47  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On Tue, 2 Nov 2021 18:29:06 +0000, John Keeping wrote:
> The same "vim-supply" typo appears in a couple of DTs.  Here are fixes
> for both of them.
> 
> John Keeping (2):
>   arm64: dts: rockchip: fix rk3308-roc-cc vcc-sd supply
>   arm64: dts: rockchip: fix rk3399-leez-p710 vcc3v3-lan supply
> 
> [...]

Applied, thanks!

[1/2] arm64: dts: rockchip: fix rk3308-roc-cc vcc-sd supply
      commit: 772fb46109f635dd75db20c86b7eaf48efa46cef
[2/2] arm64: dts: rockchip: fix rk3399-leez-p710 vcc3v3-lan supply
      commit: 2b454a90e2ccdd6e03f88f930036da4df577be76

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
