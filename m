Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3671D3B7CA
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Nov 2024 09:19:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dNEUT8lLZ6SHMIDWjep4iGVdUYNpPKiaBh+TVGKzAhQ=; b=BaGBeHb8n6KgdW
	u0tTutsj+tCqexH43It7stglkVMEj+8S+8WfewDG16U7GAJelsw1inxigRepQwDpkVkEt3ue+w7i3
	KHVWHU2Gh1VnrF7yf38JYWLyAsZx6SV+PDHJs+RzOah85NyJSFs9V9eaMHAkY0Gjw4Cfa1yhNH/Ud
	VsuSToSjuxym841hKBzWJBEGJaY/nhIVFl7Ur2Eoa0PwpDT7zpA5Q77Pvii5ymqeLiKPtAJDrUGgq
	hX5KyDTtHHgmyt1Mgcim/bqilGyJkjjxtubmud/PArXSS6Qgxb0gV1u1U2yJRDaVNXad1Ri4PsXhx
	sc6gXxVzUC1meJj8aIUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tFrjR-0000000A5Vu-41Va;
	Tue, 26 Nov 2024 09:19:41 +0000
Received: from mail.sharpwise.pl ([5.249.155.170])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tFriZ-0000000A4hJ-23ay
	for linux-rockchip@lists.infradead.org;
	Tue, 26 Nov 2024 09:18:48 +0000
Received: by mail.sharpwise.pl (Postfix, from userid 1002)
	id 13D0785282; Tue, 26 Nov 2024 10:17:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=sharpwise.pl; s=mail;
	t=1732612649; bh=5k7KaERzV9XtiDAeG3jYJqSXCiNxYwmW5KPssYFF/k8=;
	h=Date:From:To:Subject:From;
	b=X0TBftA+UUY7U84KbFMEdpPqPIP1oSxp8zYY17iO1kbV/O0e9+fknEBDfmyhTJQCf
	 6pSHG6EEE65xgZTIq3tE2UaK/XXfSPUMkSmf3S1ckq8hxj78+szzQ9cfa8oUzgETC+
	 heU5yyiRsRNCIVtnCUrztaaN3lfA9nZYUhQ1VLXKJ98qJ/49nOQ0df4rOsHNl9aNkm
	 SpXXKSMtj5G5/VtT8o3dYKuVZre9aOB2QDwfrw2DJMrOITE9BKvxWO/A4XUDNai1Zo
	 Jur0awlNiCsBzU2pdNhINTX+7ecyJFXngfoHduT2AFWyOJ9+aiWl0P/PpPUImHK47y
	 ESQMTfcxq8C4A==
Received: by mail.sharpwise.pl for <linux-rockchip@lists.infradead.org>; Tue, 26 Nov 2024 09:16:18 GMT
Message-ID: <20241126084501-0.1.83.1b6a4.0.05ctuljhmb@sharpwise.pl>
Date: Tue, 26 Nov 2024 09:16:18 GMT
From: "Patryk Wysocki" <patryk.wysocki@sharpwise.pl>
To: <linux-rockchip@lists.infradead.org>
Subject: Zapytanie ofertowe 
X-Mailer: mail.sharpwise.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241126_011847_723380_437ACB97 
X-CRM114-Status: UNSURE (   1.98  )
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
ZHN0YXdpZW5pYSBzemN6ZWfDs8WCb3d5Y2ggaW5mb3JtYWNqaT8KCgpQb3pkcmF3aWFtClBhdHJ5
ayBXeXNvY2tpCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJvY2tjaGlwCg==
