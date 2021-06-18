Return-Path: <SRS0=89Gv=LM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.6 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 03FA1C48BDF
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Jun 2021 10:01:33 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B8D40613EB
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Jun 2021 10:01:32 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B8D40613EB
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zYjb4gF6tmU3HFCPh3jBv7mK001EE5F7hgJ/EaT5Xmg=; b=spsWylk7QXUvSXXCEpXyfmMDWr
	MYesga1mqhpt7adODXXBfVKqu1Hk9qHx0DSZd+I5Qk1kGqHtM9siRv6hOgbJIeaJVYMuT50UU30Dv
	JfJJaXM5z+9W7B3dOJdLpRl7JAM35bXKjDsD2lEK1mSNNQyUumNI3zKAONP3G4CVQbnjMyvncHCp0
	C0DKpy3BBavhnY/kvi5JpTrGS6LyQ7FAGv3qNC24TafMjJuPXEgQY3zoVj1Cd1zmv3hpDaz57CNHf
	n2CokZJw4pBKuhXKDxZYtl3wK8keY18q5BqkjCLqp/rEyzZBNowKcycF32+mCDBxjGSLNq9szPpzY
	kJo3OxBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1luBJY-00DhLd-OE; Fri, 18 Jun 2021 10:01:28 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1luBJW-00DhJN-E3
 for linux-rockchip@lists.infradead.org; Fri, 18 Jun 2021 10:01:27 +0000
Received: from [IPv6:2a01:e0a:4cb:a870:141f:c87a:873e:7b6f] (unknown
 [IPv6:2a01:e0a:4cb:a870:141f:c87a:873e:7b6f])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: benjamin.gaignard)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 490ED1F41852;
 Fri, 18 Jun 2021 11:01:23 +0100 (BST)
Subject: Re: [bug report] iommu: rockchip: Add support for iommu v2
To: Dan Carpenter <dan.carpenter@oracle.com>
Cc: linux-rockchip@lists.infradead.org
References: <YMxkQ2Xn9g5DSEBO@mwanda>
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Message-ID: <7c165b71-baa0-c8c2-0a81-ef62db5d9efa@collabora.com>
Date: Fri, 18 Jun 2021 12:01:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <YMxkQ2Xn9g5DSEBO@mwanda>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210618_030126_683877_9A5750C0 
X-CRM114-Status: GOOD (  11.11  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

CkxlIDE4LzA2LzIwMjEgw6AgMTE6MTUsIERhbiBDYXJwZW50ZXIgYSDDqWNyaXTCoDoKPiBIZWxs
byBCZW5qYW1pbiBHYWlnbmFyZCwKPgo+IFRoZSBwYXRjaCBjNTUzNTZjNTM0YWE6ICJpb21tdTog
cm9ja2NoaXA6IEFkZCBzdXBwb3J0IGZvciBpb21tdSB2MiIKPiBmcm9tIEp1biA0LCAyMDIxLCBs
ZWFkcyB0byB0aGUgZm9sbG93aW5nIHN0YXRpYyBjaGVja2VyIHdhcm5pbmc6Cj4KPiAJZHJpdmVy
cy9pb21tdS9yb2NrY2hpcC1pb21tdS5jOjU1MiBya19kdGVfYWRkcl9waHlzX3YyKCkKPiAJd2Fy
bjogcG90ZW50aWFsIHNoaWZ0IHRydW5jYXRpb24uICAnMHhmZjAwMDAwMDAwICgwLDQyOTQ5Njcy
OTYtMTA5NTIxNjY2MDQ4MCkgPDwgMjgnCj4KPiBkcml2ZXJzL2lvbW11L3JvY2tjaGlwLWlvbW11
LmMKPiAgICAgNTQ0ICB9Cj4gICAgIDU0NQo+ICAgICA1NDYgICNkZWZpbmUgRFRfSElfTUFTSyBH
RU5NQVNLX1VMTCgzOSwgMzIpCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgIF5eXl5eXl5e
Xl5eXl5eXl5eXl4KPgo+ICAgICA1NDcgICNkZWZpbmUgRFRfU0hJRlQgICAyOAo+ICAgICA1NDgK
PiAgICAgNTQ5ICBzdGF0aWMgaW5saW5lIHBoeXNfYWRkcl90IHJrX2R0ZV9hZGRyX3BoeXNfdjIo
dTMyIGFkZHIpCj4gICAgIDU1MCAgewo+ICAgICA1NTEgICAgICAgICAgcmV0dXJuIChwaHlzX2Fk
ZHJfdCkoYWRkciAmIFJLX0RURV9QVF9BRERSRVNTX01BU0spIHwKPiAgICAgNTUyICAgICAgICAg
ICAgICAgICAoKGFkZHIgJiBEVF9ISV9NQVNLKSA8PCBEVF9TSElGVCk7Cj4gICAgICAgICAgICAg
ICAgICAgICAgICAgICBeXl5eXl5eXl5eXl5eXl5eXgo+IElzIGFkZHIgc3VwcG9zZWQgdG8gYmUg
YSB1NjQ/CgpUaGUgZXJyb3IgaXMgdG8gdXNlIERUX0hJX01BU0sgaGVyZS4KSXQgc2hvdWxkIGJl
OgojZGVmaW5lIERURV9CQVNFX0hJX01BU0sgR0VOTUFTSygxMSwgNCkKCnN0YXRpYyBpbmxpbmUg
cGh5c19hZGRyX3QgcmtfZHRlX2FkZHJfcGh5c192Mih1MzIgYWRkcikKewoJcmV0dXJuIChwaHlz
X2FkZHJfdCkoYWRkciAmIFJLX0RURV9QVF9BRERSRVNTX01BU0spIHwKCSAgICAgICAoKGFkZHIg
JiBEVEVfQkFTRV9ISV9NQVNLKSA8PCBEVF9TSElGVCk7Cn0KCkkgd2lsbCBzZW5kIGEgcGF0Y2gu
ClRoYW5rcyBmb3IgdGhlIGZpbmRpbmcuCgpSZWdhcmRzLApCZW5qYW1pbgoKPgo+ICAgICA1NTMg
IH0KPgo+IHJlZ2FyZHMsCj4gZGFuIGNhcnBlbnRlcgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
