Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B56CDC25B74
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 May 2024 08:22:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MyWI+DKTtEnmfBtUYU4tVp4CXkzcsHPjqA1FQdJhywY=; b=WjsM5s0VzUnKNt
	p1YgtH9AA1X2CFJbV6dHBjGFDyxmgaL0OuUDLoZPNtLUSwNr+xP7SvwwK0nPvlxId+kV/32rWf76G
	hMHrkCnDNbtgMCyIsY1X+rM9r3OauLSS3w9vVXMplwnmRaS7JeqdRlvgvP+WGb7mrFHRc38d+J2Qr
	ZyhUf4+L+/8dwy+jRG7Ej8mJC8fy/lg31OxPQuZCUNTuo5aSA4yVt+tEs6g5If6mHK8COTeJM34PI
	LX2Fsizr7kpTAdEVFGTxkaijpTX825sOnuv14qW8t5umbdQOgemIceyYAHVGXBC0ahYQLiPa1HskP
	lsXsff4+tgpNV3q5WvwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s6Qww-0000000CCl0-3lSu;
	Mon, 13 May 2024 08:22:22 +0000
Received: from mail.quirkbyte.pl ([94.177.238.152])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s6Qwt-0000000CCio-3NpC
	for linux-rockchip@lists.infradead.org;
	Mon, 13 May 2024 08:22:21 +0000
Received: by mail.quirkbyte.pl (Postfix, from userid 1002)
	id 66278828A5; Mon, 13 May 2024 10:16:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=quirkbyte.pl; s=mail;
	t=1715588273; bh=V4qwQGqC7KpJoyielzRpnopuINFIOvKXsSgJ3ZENIXU=;
	h=Date:From:To:Subject:From;
	b=tIPIoQdXBCqLmha5bi2us99CMXqmabNagywDGyi0uXGYFL0VVbTTcl/ZeEcl5hyDm
	 eAsc+FuKspjR9M+aJV/iTpGn2s00dGWFV/PcV5Yw5n3NTJhIMqXOozgoNVTWCcg+dn
	 f1P3ZNVdFZieRcaDnfBbKppKLhF5BDUOOgOI12+uMsjyA7iPsfxcuO3V67XPftzXep
	 HG8xBExwMyPqHDc4wYFRkozl/n15Zgaek6rjM1LC10Xwt14VQ/IWr8bO0X06xHu3qZ
	 GyEgsNxEDoEL2rD4QXExfm4EpEHULjDl5hqyATyyHm1M/1/+AVg8PcFCVMlNPterix
	 JAtVdPRt9Xr1Q==
Received: by mail.quirkbyte.pl for <linux-rockchip@lists.infradead.org>; Mon, 13 May 2024 08:15:50 GMT
Message-ID: <20240513084501-0.1.2y.1o1u9.0.1f8mj6x8as@quirkbyte.pl>
Date: Mon, 13 May 2024 08:15:50 GMT
From: "Norbert Karecki" <norbert.karecki@quirkbyte.pl>
To: <linux-rockchip@lists.infradead.org>
Subject: Fotowoltaika - propozycja instalacji
X-Mailer: mail.quirkbyte.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240513_012220_019924_06751EB2 
X-CRM114-Status: UNSURE (   0.55  )
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
