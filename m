Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 154B4C27C5F
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 Jun 2024 08:14:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MyWI+DKTtEnmfBtUYU4tVp4CXkzcsHPjqA1FQdJhywY=; b=myUjnvoQTsb8ce
	XCuukKj0YsiB26kOMCimPq79vzQIy88nm572Q8LpJ6noR3j9UenIg6Yjpimb+bTC7K9jIcRpdAnqn
	cyqmYPoOKPSlb5F2+nsfBnzIuapVhSlh7QESLVgmEX6Xe8AwNTcdg08M5Ope1OEdHC/Yaq3efH4lw
	Ag3UNoh2hD+jBIQSj/wlR6sQMuND7iPIQHP0a40hSkXUJ0/KHO+kNLK6JBMhOLFtaSPV2qcfxH5x4
	8XJnlhi8TLpMRG0xCvfASa8UyZt1MhgpDYmDof/kGXnI5kr9l8wK6fbReOHFMmc4QED6hOd3xEO9W
	g6IleMznT4PPQ15i3GsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFUja-0000000D544-2Mlp;
	Fri, 07 Jun 2024 08:14:02 +0000
Received: from mail.quirkbyte.pl ([94.177.238.152])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFUjX-0000000D53O-1ZMv
	for linux-rockchip@lists.infradead.org;
	Fri, 07 Jun 2024 08:14:00 +0000
Received: by mail.quirkbyte.pl (Postfix, from userid 1002)
	id 5AA4E82760; Fri,  7 Jun 2024 10:06:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=quirkbyte.pl; s=mail;
	t=1717747679; bh=V4qwQGqC7KpJoyielzRpnopuINFIOvKXsSgJ3ZENIXU=;
	h=Date:From:To:Subject:From;
	b=TWhkv9E5hRClTALD6qKWedDQBsvryR76Y/f+sm6qjRXI0xFqRSRoSBZdd1grbPOkA
	 DrbwoY7jBkcjC1SMBuk/sTCqTyi3ZP9S+AuiGPvnW4TA/BHc4cbHOdhXNlOZmJBw6L
	 WiY/a3B+IQE7xeOHMdQPQ1ydPNkpYZHmp5i2BHdMi9E3JntN1iR2BjwUYuYppJYDJu
	 E+PF57XOICfpXJOD40mbMPAHXWFtlrPCyth9qu0FLHNkXbAUMvZxSiAXTSuKCybLEo
	 5mBejTbZNrMVZq+EHJ+AWxCOGFXJeHl/a8WBPKitS9JbKTh6VW0VoN6vcANDDWsM8O
	 yJT6CbdS128pA==
Received: by mail.quirkbyte.pl for <linux-rockchip@lists.infradead.org>; Fri,  7 Jun 2024 08:06:06 GMT
Message-ID: <20240607084500-0.1.3g.1z801.0.buij2yfera@quirkbyte.pl>
Date: Fri,  7 Jun 2024 08:06:06 GMT
From: "Norbert Karecki" <norbert.karecki@quirkbyte.pl>
To: <linux-rockchip@lists.infradead.org>
Subject: Fotowoltaika - propozycja instalacji
X-Mailer: mail.quirkbyte.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240607_011359_560882_3516811F 
X-CRM114-Status: UNSURE (   0.48  )
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
