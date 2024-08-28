Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06A76C5474A
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Aug 2024 08:01:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2fcgD7I2tHIVsU9QXZXKAwzqgU+6IQI/2EDv/39M108=; b=QlkSyYSbb6WLj8
	3CRX8sX6jcfNSshabMyeZH0QJ636FnzOwrDNMHP0OA90k+hUeob84BxrgQMlztA4eThUC1iQ8+4wF
	lh+J3Z5UnZYfXVIcOcaFb8J4HjBOVRFedCZY4IB0EB1YJX1fjSBGlR+4tXMzfl5EtVa4GN9d4FjKT
	1X40Isx+m3EP5dB7NAwFZTxbAuL7EDRmIDXS0RB2e10ChsFG3nvC0WGE2rb5UVvMzKEubJ/dv2TYP
	ZxbFSRw6MbsUlP+cYh5AhKJGPeX9zO1t4V++tpgvEo9brfbTTaJV1RNtcyGdyue3D4yXDAOMDQOx5
	/DP1OIRgSLBYJI1s+Vog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjDca-0000000ES28-0Z2C;
	Wed, 28 Aug 2024 08:01:40 +0000
Received: from mail.widebizscope.pl ([51.77.245.187])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjDbX-0000000ERIS-43C0
	for linux-rockchip@lists.infradead.org;
	Wed, 28 Aug 2024 08:00:37 +0000
Received: by mail.widebizscope.pl (Postfix, from userid 1002)
	id 893B424801; Wed, 28 Aug 2024 10:00:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=widebizscope.pl;
	s=mail; t=1724832034;
	bh=7b2Hseb9QY/049WYSH5jOQc1GsDAtRo2MBj6O2PAhWg=;
	h=Date:From:To:Subject:From;
	b=b+zb87ZIn402iVcHqe9Y3uZsSkRW4iAPtYZF9WZYsn/ufmab48vbddwt5c8DNOu2V
	 XldEvmBew0KIOWLiQngZQYcsawndTke1GtAIMNVS05vuFTrqhBva0kY0NLvbbA7i3y
	 hcaj0PH3fIkrdJ9aNnixM25bCLXYD0wjm/6V+KrNsYXKFQIhQaPY74KM+4ItrbNGWf
	 MHM8SQq4gBaDyENVa5ykAtuEu5N73PvTWj39guUBmkHf/q77SIff4ZSfOLuovQgQYm
	 uk6P/S25i5WF1asLmT5/CqiKA5qdmVntXNG3YxksXZvNfc7BmG+o0BNWuxK0/sMmZ+
	 yfYYNjphwMPKQ==
Received: by mail.widebizscope.pl for <linux-rockchip@lists.infradead.org>; Wed, 28 Aug 2024 08:00:27 GMT
Message-ID: <20240828084500-0.1.dc.rog6.0.zfkcvy1mm1@widebizscope.pl>
Date: Wed, 28 Aug 2024 08:00:27 GMT
From: "Szczepan Andryszczuk" <szczepan.andryszczuk@widebizscope.pl>
To: <linux-rockchip@lists.infradead.org>
Subject: Faktury
X-Mailer: mail.widebizscope.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240828_010036_169941_7EA7A17C 
X-CRM114-Status: UNSURE (   0.11  )
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

U3phbm93bmkgUGHFhHN0d28sCgpDenkgem1hZ2FqxIUgc2nEmSBQYcWEc3R3byB6IHByb2JsZW1h
bWkgcMWCeW5ub8WbY2kgZmluYW5zb3dlaiB3eW5pa2FqxIVjeW1pIHogZMWCdWdpY2ggdGVybWlu
w7N3IHDFgmF0bm/Fm2NpIG9kIGtsaWVudMOzdz8gCgpOYXN6ZSB1c8WCdWdpIGZha3RvcmluZ293
ZSBtb2fEhSBiecSHIHJvendpxIV6YW5pZW0sIGt0w7NyZWdvIHBvdHJ6ZWJ1amUgUGHFhHN0d2Eg
ZmlybWEsIGFieSBzenliY2llaiB6YW1pZW5pYcSHIHd5c3Rhd2lvbmUgZmFrdHVyeSBuYSBnb3TD
s3drxJkuCgpKZcWbbGkgemFsZcW8eSBQYcWEc3R3dSBuYSBuYXR5Y2htaWFzdG93eW0gZG9zdMSZ
cGllIGRvIMWbcm9ka8OzdyBmaW5hbnNvd3ljaCBwbyB3eXN0YXdpZW5pdSBmYWt0dXJ5LCB6YXBy
YXN6YW0gZG8ga29udGFrdHUuCgoKUG96ZHJhd2lhbQpTemN6ZXBhbiBBbmRyeXN6Y3p1awoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2No
aXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
