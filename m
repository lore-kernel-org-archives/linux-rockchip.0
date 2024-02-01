Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81C2AC47DDB
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Feb 2024 08:42:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MyWI+DKTtEnmfBtUYU4tVp4CXkzcsHPjqA1FQdJhywY=; b=qMGvmTzSPiUOnw
	ljLhuBjHKcxwOue8HsqQwLvXnzTbyyD8PCJle9Lg23UXjSSRQPzfmIpSPo5eXW5bZaWC4g6cLVfmA
	jNVNBNf/IbQsfz8TwRJsvA334S9Nu3Un4TKaj++hYh16TplVQUhck84k66YTJRquXxdwWX5vEJz4M
	GDlatQKXMjOsm54M3p5utQo6OCoBM5M5f+cKaFpxAlt4lMegjJ8xhJgTre7jwcMIRBBmJZujuuzUS
	ZGPJdY+qXt9VsGRO4LvwVDMjplqM80cIvsmp9pHI2ewF/1uNj0lZgF7YekQhRpvHASJpTd0OmLsD8
	fC3ouH/IpxVaqH3cClgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVSeg-000000077qx-1P42;
	Thu, 01 Feb 2024 08:42:42 +0000
Received: from mail.quirkbyte.pl ([94.177.238.152])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVSed-000000077pQ-3ldC
	for linux-rockchip@lists.infradead.org;
	Thu, 01 Feb 2024 08:42:41 +0000
Received: by mail.quirkbyte.pl (Postfix, from userid 1002)
	id 2D9E083D38; Thu,  1 Feb 2024 09:41:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=quirkbyte.pl; s=mail;
	t=1706776876; bh=V4qwQGqC7KpJoyielzRpnopuINFIOvKXsSgJ3ZENIXU=;
	h=Date:From:To:Subject:From;
	b=lhpZVFEvEvPTJwf/fNK2LltOxDwTlDug8aZVT5CwrjFc7yCg8L4aDOKE8QJpBP3PD
	 VZfWPdbQHqEHIV58lPo967ctWBWxwu78cNPbIcXFx/2CVHgBuDRCNVGCMznfzrVgyA
	 NUc4fXN2wXgFcC9kGUJjMhUaN9Z0tSdgfGB02xMqY56nkAQDbSyQyMFFosv+bVCi1T
	 V30NQmnSZ6tsIKWWukdUK8ZKN0gTJSXcVkNtAIHw2HndGRXZmc+5GAkC2Xd9GbYa3P
	 C/G64SzZXle7YTSQHcPlmKa0hVv2JNhTYXE9ReTWbj4FMLk/vsy692vf01AxxqFK7d
	 TDay+V7C7KF3w==
Received: by mail.quirkbyte.pl for <linux-rockchip@lists.infradead.org>; Thu,  1 Feb 2024 08:41:00 GMT
Message-ID: <20240201084501-0.1.11.jixp.0.lrxc3zlajj@quirkbyte.pl>
Date: Thu,  1 Feb 2024 08:41:00 GMT
From: "Norbert Karecki" <norbert.karecki@quirkbyte.pl>
To: <linux-rockchip@lists.infradead.org>
Subject: Fotowoltaika - propozycja instalacji
X-Mailer: mail.quirkbyte.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240201_004240_092264_AE315C70 
X-CRM114-Status: UNSURE (   1.97  )
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

RHppZcWEIGRvYnJ5LAogCkN6eSByb3p3YcW8YWxpIFBhxYRzdHdvIG1vbnRhxbwgc3lzdGVtdSBm
b3Rvd29sdGFpY3puZWdvPwogCkluc3RhbGFjamEgZm90b3dvbHRhaWN6bmEgamVzdCBuYWpsZXBz
enltIHNwb3NvYmVtIG5hIG9ibmnFvGVuaWUgd3lzb2tvxZtjaSByYWNodW5rw7N3IHphIHByxIVk
IChwb3pvc3RhasSFIHR5bGtvIG9wxYJhdHkgc3RhxYJlKSBpIHphYmV6cGllY3plbmllIHNpxJkg
cHJ6ZWQgcm9zbsSFY3ltaSBjZW5hbWkgZW5lcmdpaSBlbGVrdHJ5Y3puZWouIEplc3QgdG8gdyBw
ZcWCbmkgb2RuYXdpYWxuZSBpIGJlemVtaXN5am5lIMW6csOzZMWCbyBlbmVyZ2lpLCBkemnEmWtp
IGN6ZW11IHByenljenluaWFteSBzacSZIGRvIG9jaHJvbnkgxZtyb2Rvd2lza2EgbmF0dXJhbG5l
Z28uCiAKRHppYcWCYW15IG9kIHdpZWx1IGxhdCBuYSByeW5rdSBlbmVyZ2V0eWN6bnltLiBQcnp5
Z290dWplbXkgcHJvamVrdCwgd3ljZW7EmSBvcmF6IGtvbXBsZWtzb3dvIHd5a29uYW15IGkgemfF
gm9zaW15IHJlYWxpemFjasSZIGRvIHpha8WCYWR1IGVuZXJnZXR5Y3puZWdvLiAKIApDenkgY2hj
xIUgUGHFhHN0d28gcG96bmHEhyBuYXN6xIUgcHJvcG96eWNqxJk/ICAKCgpQb3pkcmF3aWFtCk5v
cmJlcnQgS2FyZWNraQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
