Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6EC33C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Mar 2022 07:51:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=McYQUF5m36z45c2niX/3nOV1MVRlSrYdGVL6G1kYFiI=; b=2s8oIGwmfQ/EiX
	RGDidkM1jlh3oQMDV4wQQjFFjSOhagJf0fS+iasHmE2a+7wj4IkGjmE4ROtI6pLPfZK+5asGxk+UG
	yJp5jmFIenZ1+JtJ0X0zD++GKmJ73R2YgzplSaEn1/h0oWD1tu2GjupMwUFn3lWM05b0kZM/Z+c9G
	wlOTCfD4SrEzMYNvrZ6vnQMn4/w4bOAhnrxPGrFlpiay87VpUJWuLVRzlGmvWf1RrVwFkGyhP+QE6
	WlZO1eUAmCL5jXMM7VHJaQRCBkEcdwX9YVE+0D86wgIrxwgMVN1ehKKubWpKuu9iOiAk21S20PnPQ
	sVo3bwSC5OYCBn5TAzKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nYk9y-007gZ3-CA; Mon, 28 Mar 2022 07:51:30 +0000
Received: from mail.ourpartnership.pl ([80.211.82.238])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nYk9v-007gXq-CC
 for linux-rockchip@lists.infradead.org; Mon, 28 Mar 2022 07:51:28 +0000
Received: by mail.ourpartnership.pl (Postfix, from userid 1001)
 id EDCF163158; Mon, 28 Mar 2022 08:46:42 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ourpartnership.pl;
 s=mail; t=1648453706;
 bh=M1ZVeu3q6Upppe+FUx/3rgI7MKJXh389NZDbgCK1SX4=;
 h=Date:From:To:Subject:From;
 b=cEsWGfuyRvVpkXsqZVp4V4rbX8JiZMJP2T3UKofMrqfilpc/IsAG0lGjlmZIzv68U
 YtMmwUaRTjT35jhbVZ/+L9CvYW8F5wQYCXiKbCTIpyQwXTSghqBoYOUzR6fg0yBvVT
 wDtIGKW+Eoa19whXibZ6IYF9a4Dm9tDjuCQbH8tOHZie/0zIyA8bMjHowG+agy249/
 hRe2dfi9YYVSgjXO/2IsJEtmBvY80HuYkNMZvOdldiRFka9Ep49wB74pjfuK0RFKKR
 jr+MVSfxyuvSeFlXrEY9ih+litucJJ9vQ67tJRHLV1aQaApvlMxwGg3Fcsb42HyZvM
 5BkMUdUDrFjnA==
Received: by mail.ourpartnership.pl for <linux-rockchip@lists.infradead.org>;
 Mon, 28 Mar 2022 07:46:04 GMT
Message-ID: <20220328074501-0.1.9.2atw.0.31wpiikt70@ourpartnership.pl>
Date: Mon, 28 Mar 2022 07:46:04 GMT
From: =?UTF-8?Q?"Arkadiusz_Soko=C5=82owski"?=
 <arkadiusz.sokolowski@ourpartnership.pl>
To: <linux-rockchip@lists.infradead.org>
Subject: Koszty instalacji fotowoltaicznej
X-Mailer: mail.ourpartnership.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220328_005127_621650_2EAD5C64 
X-CRM114-Status: UNSURE (   1.12  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

RHppZcWEIGRvYnJ5LAoKc3R3b3J6eWxpxZtteSBzcGVjamFsbsSFIG9mZXJ0xJkgZGxhIGZpcm0s
IG5hIGtvbXBsZWtzb3fEhSBvYnPFgnVnxJkgaW53ZXN0eWNqaSB3IGZvdG93b2x0YWlrxJkuICAK
ClNwZWNqYWxpenVqZW15IHNpxJkgdyB6YWtyZXNpZSBkb2JvcnUsIG1vbnRhxbx1IGkgc2Vyd2lz
aWUgaW5zdGFsYWNqaSBmb3Rvd29sdGFpY3pueWNoLCBkeXNwb251amVteSBuYWpub3dvY3plxZtu
aWVqc3p5bWkgcm96d2nEhXphbmlhLCBrdMOzcmUgemFwZXduacSFIFBhxYRzdHd1IG9jemVraXdh
bmUgcmV6dWx0YXR5LgoKTW/FvGVteSBwcnp5Z290b3dhxIcgZGxhIFBhxYRzdHdhIHdzdMSZcG7E
hSBrYWxrdWxhY2rEmSBpIHByemVhbmFsaXpvd2HEhyBlZmVrdHkgbW/FvGxpd2UgZG8gb3NpxIVn
bmnEmWNpYS4KCkN6eSBzxIUgUGHFhHN0d28gb3R3YXJjaSBuYSB3c3TEmXBuxIUgcm96bW93xJkg
dyB0eW0gdGVtYWNpZT8KCgpQb3pkcmF3aWFtCkFya2FkaXVzeiBTb2tvxYJvd3NraQoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAg
bWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
