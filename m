Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 92F21C36010
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Apr 2025 08:07:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CRgAYM6OyBnMS/ZFbw0s0eM7ndjMHF0ncQuF1ko+tqw=; b=UeHajYN0aymSNs
	3+njytPyF3ay1IWTyG2eiSB43PImm9azAz2WyY4Qk4cE7TENywSMD4w6rIgDUPVVkNAcE2SJByYIs
	Qkeuvj0ke6lczhpeoZ0y8oJVH0PBtekCz4oGi5CRbba2vod4FqVJ58XdkDHMzshwwn59aGYAZ9dqR
	5UJV5+yZA+wF90VDDgXekz9wuxL5LGzUeOb29SWe7d3ODFz+Avo7XxvAoK7gFLDQPNyATzmznrZls
	CeB2sFh6TQqcx1QRwidIhFL4EzQVmxb6SnDICE57kQSCrUC5VthwJ2DgVHiR0FYMmI+q/Z2+ytp7d
	Thpw8E8PAakmxsEBNgIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u39QK-0000000CyVl-3vtV;
	Fri, 11 Apr 2025 08:07:40 +0000
Received: from mail.novaplan.pl ([51.195.118.1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u39QH-0000000CyUn-3A7H
	for linux-rockchip@lists.infradead.org;
	Fri, 11 Apr 2025 08:07:39 +0000
Received: by mail.novaplan.pl (Postfix, from userid 1002)
	id 5AFD2A48ED; Fri, 11 Apr 2025 10:05:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=novaplan.pl; s=mail;
	t=1744358814; bh=jxb0oDMobd7GaIcoqojTSF8ZoNcoVg4kM8ohJkoHKb8=;
	h=Date:From:To:Subject:From;
	b=2mu+9+XBIBMq659nlKZ5JdclAe1TAm9HK2cphjx1JATP93hQnTPfr1EAn5GL6d5jM
	 HXXpDO7py92EMnGITtUt5+yXHeceFNDZpoC4Xw1EOAiEUwQr89pGEYWMp6gEk5eCyD
	 NbOSVlYg1HbQDa48dZ/s+KyNbAk3UALeSMjUajXnfIN+wlLaSF9pf6Gfb0/tlgfLQJ
	 zCf2Q0a5c97sAYv53YJsmtxrVRxV7IeWtykzPg/nrCT+tiIoX6pJ5OJEBrOYsYix+h
	 xG29VbDqGCbAf0xXHS0nrGBpoVka2/Qdo8AXVh67gvIpffSHCDjw9lk70MPuv1LNpB
	 QtOlk4vc6tjww==
Received: by mail.novaplan.pl for <linux-rockchip@lists.infradead.org>; Fri, 11 Apr 2025 08:05:47 GMT
Message-ID: <20250411084500-0.1.kz.1of50.0.wgcwf3jiip@novaplan.pl>
Date: Fri, 11 Apr 2025 08:05:47 GMT
From: "Adrian Liszka" <adrian.liszka@novaplan.pl>
To: <linux-rockchip@lists.infradead.org>
Subject: =?UTF-8?Q?Prosz=C4=99_o_kontakt?=
X-Mailer: mail.novaplan.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250411_010738_479471_6F30B949 
X-CRM114-Status: UNSURE (  -0.13  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

RHppZcWEIGRvYnJ5LAoKQ3p5IGplc3QgbW/FvGxpd2/Fm8SHIG5hd2nEhXphbmlhIHdzcMOzxYJw
cmFjeSB6IFBhxYRzdHdlbT8KClogY2jEmWNpxIUgcG9yb3ptYXdpYW0geiBvc29ixIUgemFqbXVq
xIVjxIUgc2nEmSBkemlhxYJhbmlhbWkgendpxIV6YW55bWkgemUgc3ByemVkYcW8xIUuCgpQb21h
Z2FteSBza3V0ZWN6bmllIHBvenlza2l3YcSHIG5vd3ljaCBrbGllbnTDs3cuCgpaYXByYXN6YW0g
ZG8ga29udGFrdHUuCgoKWiBwb3pkcm93aWVuaWFtaQpBZHJpYW4gTGlzemthCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
