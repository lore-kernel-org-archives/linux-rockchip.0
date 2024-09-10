Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F478ECE582
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Sep 2024 08:13:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MyWI+DKTtEnmfBtUYU4tVp4CXkzcsHPjqA1FQdJhywY=; b=k2KilLdwEn8af7
	WUCZAzjy0/bYT47cighpRk7+lPJAim3W66z1ORRRpbDHdMpVrJ/tiDxTWKXMVXhBXnS2G5sJUEBaO
	SXMu2vE69ELXpJ63B0o9eNUZI3wQ5ml6UukEKfu90bjTYQyUWcXDTY0GpMjncG/piQ2SANkMcoASE
	nv6TVzYgIoLPEdT3fzZNRhH4IxiXVq9DujtsOeuvnpJqrAVZyNbfG8fww3CciSSalCfezfv6o8uWH
	jt/T8IYLGd/0jBNMyWWpOeU0i+wo9pGl6z+icY5vZg/EXjhystuAJDRcJfZtxtBK2214Om+H94pTo
	uf6nmGulM/NPGyifLqIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snw08-00000004lI6-4BQX;
	Tue, 10 Sep 2024 08:13:29 +0000
Received: from mail.quirkbyte.pl ([94.177.238.152])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snw04-00000004lF7-2lca
	for linux-rockchip@lists.infradead.org;
	Tue, 10 Sep 2024 08:13:27 +0000
Received: by mail.quirkbyte.pl (Postfix, from userid 1002)
	id 8F9038308D; Tue, 10 Sep 2024 10:11:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=quirkbyte.pl; s=mail;
	t=1725955878; bh=V4qwQGqC7KpJoyielzRpnopuINFIOvKXsSgJ3ZENIXU=;
	h=Date:From:To:Subject:From;
	b=OiUT3Jxf2QTuWM9bXJ67qgJd1oWg6aEw2ohCjD/jGxtDUrPambhLlIFAcJfwaQOSE
	 cRxWcntwUxdAfiaNE7MS4bgG6k8AvjzVHsAM9/ohnwt6joz6iVww7U8xzcmGirQ9PV
	 k7kEk4EwJa2c0qqGL2ML/uSAD1Ez1Osm6ps4Pk0s4Go3xgjIjowJcGkvfrdX4tU7FW
	 rr+0jOzrXwEvML0E9jTNt3oofw68a5MamluWi3y0q5PcE1JpqtF73n0nTvrh9MXbxY
	 0olRs4gqd3nEVASF+yGpTYU7tfzp0rYBN+eav/ojECyCiIEmUvuPp1m5hkr4uY4tjp
	 eSF07kZyUcoGg==
Received: by mail.quirkbyte.pl for <linux-rockchip@lists.infradead.org>; Tue, 10 Sep 2024 08:11:04 GMT
Message-ID: <20240910084500-0.1.5a.30pon.0.hgcdi71ayi@quirkbyte.pl>
Date: Tue, 10 Sep 2024 08:11:04 GMT
From: "Norbert Karecki" <norbert.karecki@quirkbyte.pl>
To: <linux-rockchip@lists.infradead.org>
Subject: Fotowoltaika - propozycja instalacji
X-Mailer: mail.quirkbyte.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240910_011325_389884_71046334 
X-CRM114-Status: UNSURE (   1.42  )
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
