Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07F23C07D5A
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Nov 2023 09:07:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3z9bFfhEE/PAfJpnp3mzELCqpEKY+Zi/VfY2gwp/l5s=; b=t/ZcNH4tqtoXi1
	OFtmUHjkd4X9arrv4CVnO9zmfJRvk4gh9/Djsv3w4H97x5vBeYNiFxfsG/PWU91wg4ZrKPzyLk0ob
	vuCFPu62q04v+NSUz29x+t5QcNyc4a10LFOBLddvR/D43sollrZ1+MoRxtps4ZvFJdV0Ve3WR2Dbg
	hUtNXW6a5Gaatr7PgH/xEQDf4bI7Hr7AOdcjnFgHXzBt2L65q1aLGJDE0QM/PWWZe1sFPpz+PKgdg
	A4MDIFc0D9sTJ4JNhVcIKF2gkG6G4Puvi9OZk9zkCCdiQe1OhYWKnyy/Z0ZGV7+YLL0JUdaowIz7p
	FY6OCrblcKqjAa9xDKSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7Xa4-001vJV-0C;
	Mon, 27 Nov 2023 09:07:04 +0000
Received: from mail.thrivehub.pl ([164.132.48.43])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7Xa0-001vHc-1p
	for linux-rockchip@lists.infradead.org;
	Mon, 27 Nov 2023 09:07:01 +0000
Received: by mail.thrivehub.pl (Postfix, from userid 1002)
	id F121D24F0A; Mon, 27 Nov 2023 09:05:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=thrivehub.pl; s=mail;
	t=1701075969; bh=m3ZUCTPRVLoDFM+cXi7VhHW+xNF3eUdGHrj1eDbLwQI=;
	h=Date:From:To:Subject:From;
	b=LBY2vmU/64Bmcy6+3sjmHPrnBlkiDp6n035H0jn67SJEh8jLb8uG1AxwHTYQ02BfK
	 XysIscOko1fOBXZhW7flm7bBfH9VbtV//zs/swJE+HqgXak/GJTVgYYeVaTKnmvcy7
	 IfKcGtDvkV+BLAb6NMfNCaf/K7XyzoCvVJxXj2mzKVI9oAef5r9QpOFHcdU4rsDfky
	 a2ptC2gEupzQCouxtSRoQ2bqxSs3OcXo5BZ9VFSVd4rGkXXG1PHsDZ2wSZoSao1EYL
	 pCo67Mzz32w9BoySP7/C7EWLA4xrrE9JhIrB29brvQJnHMiShnv3Oj7ON3LNbW4GLo
	 CT60Vx7EjMqog==
Received: by mail.thrivehub.pl for <linux-rockchip@lists.infradead.org>; Mon, 27 Nov 2023 09:05:02 GMT
Message-ID: <20231127074500-0.1.35.1bpml.0.5gmj5x0rh5@thrivehub.pl>
Date: Mon, 27 Nov 2023 09:05:02 GMT
From: "Szymon Jankowski" <szymon.jankowski@thrivehub.pl>
To: <linux-rockchip@lists.infradead.org>
Subject: Zapytanie ofertowe 
X-Mailer: mail.thrivehub.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231127_010700_748652_661A2AA9 
X-CRM114-Status: UNSURE (   1.39  )
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

RHppZcWEIGRvYnJ5LAoKUG96d29sacWCZW0gc29iaWUgbmEga29udGFrdCwgcG9uaWV3YcW8IGpl
c3RlbSB6YWludGVyZXNvd2FueSB3ZXJ5ZmlrYWNqxIUgbW/FvGxpd2/Fm2NpIG5hd2nEhXphbmlh
IHdzcMOzxYJwcmFjeS4KCldzcGllcmFteSBmaXJteSB3IHBvenlza2l3YW5pdSBub3d5Y2gga2xp
ZW50w7N3IGJpem5lc293eWNoLgoKQ3p5IG1vxbxlbXkgcG9yb3ptYXdpYcSHIHcgY2VsdSBwcnpl
ZHN0YXdpZW5pYSBzemN6ZWfDs8WCb3d5Y2ggaW5mb3JtYWNqaT8gCgoKUG96ZHJhd2lhbQpTenlt
b24gSmFua293c2tpCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
