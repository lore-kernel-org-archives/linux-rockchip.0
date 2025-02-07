Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EDA58C02196
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 Feb 2025 08:53:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CRgAYM6OyBnMS/ZFbw0s0eM7ndjMHF0ncQuF1ko+tqw=; b=PnlmS8ETdPAXXI
	gx6Z0hSGDkKW8tF8WjJDocAE2mIMSuBVJyTNs3OT0EFth1UMAyicu0ZXvCbNgAFrYc4eYyUnE9enu
	XyS2IGXoABfww5Y6lsladGdZFqw//Qj45xcak8HH5/r31S8NAwn79CxXXOqZrjTl6XF5Ywwk+m6OK
	v7oQyzdXbU+DJmIeatZSRMDQrQGriat3k2MMrpTQ1ns06cXRgrFUF6i4MOanwrGoUqFv8ebjFViXi
	6pxSENsbrhB11EO/dL1AVV9uqzKU0QlcStkNosTtlE9asbk/U8g/UjKr4qSJb4gkgBe9i/yvaWA9S
	cuuvu8nWB0p99UqLpe1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tgK7I-00000008tH8-1LwK;
	Fri, 07 Feb 2025 08:53:40 +0000
Received: from mail.novaplan.pl ([51.195.118.1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tgK0p-00000008sDQ-3sBs
	for linux-rockchip@lists.infradead.org;
	Fri, 07 Feb 2025 08:47:02 +0000
Received: by mail.novaplan.pl (Postfix, from userid 1002)
	id 9F1D4A3D69; Fri,  7 Feb 2025 09:46:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=novaplan.pl; s=mail;
	t=1738918012; bh=jxb0oDMobd7GaIcoqojTSF8ZoNcoVg4kM8ohJkoHKb8=;
	h=Date:From:To:Subject:From;
	b=w7iPQf/qQnwz3uCCUUd+L66eJyhkFMtqUMx/sK9sWBEU+mAsDax07WI2pJBJtajxR
	 a9+IiJC+c1hkhiZRB/dnYlJx5Mi7CxumoCzYNroVuG5VAYfDz+PpcLD57rJ6g7sro+
	 QPmtQKmg1E7rKk3W24XrIvRnCu4ZcENi1tssZf4B56yoLABDQRR1q0XkXdkT3ZCKpf
	 wr9vlqSC0KNviIv6WpfHOKqu/XYA4FhxPiowVr7PIEeKNEhiy3N96/V4M7EQj/2lTd
	 hKaf9+wY71VhISbHryxct8F57pdF9vyShigrGMFkSGCjQ6WV0fUri8y5z++zDnh6N4
	 +8OZIA9YgKUnA==
Received: by mail.novaplan.pl for <linux-rockchip@lists.infradead.org>; Fri,  7 Feb 2025 08:46:13 GMT
Message-ID: <20250207084500-0.1.jq.177bl.0.j985f47uj2@novaplan.pl>
Date: Fri,  7 Feb 2025 08:46:13 GMT
From: "Adrian Liszka" <adrian.liszka@novaplan.pl>
To: <linux-rockchip@lists.infradead.org>
Subject: =?UTF-8?Q?Prosz=C4=99_o_kontakt?=
X-Mailer: mail.novaplan.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250207_004700_662516_5F269211 
X-CRM114-Status: UNSURE (   0.93  )
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
