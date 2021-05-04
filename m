Return-Path: <SRS0=aLnl=J7=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0518AC433B4
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 May 2021 11:57:20 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8DCC2610F7
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 May 2021 11:57:18 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8DCC2610F7
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Date:Cc:To:From:
	Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=e2ca7thqevPtF4IHXc5wdQp3AjZrz0lV08QUF58+H5Y=; b=LK4wzGWbYSt+XXx3hdZm15yhl
	M9fsAjXMK3bXgaM89xjbm6uwIxhXn/rnw5o7JfBqBFXehVP3hI7NJnc+RMTqZVMCqmEuTZr5G/mC7
	J2SqDFOq1CH90nF64UywNLujB7UzIlhcwX3u26vMvQZbRo7HzD/6yAEw8Xf6kxa7PowuP+Nep0cyb
	JuEZUHTLycucea8cyIfP5pwkTGyHHwGhns1/pBOCB52FazZijFl4AsFhwL54nBFSKYg0J9j1Xk4jR
	is62je5480nyAwlTMYnQkYZ2tK0ntnBwYeuoNVVMiOlP13CUIhqp1IHW5fSV5rF9b/zLNdQRpV+AF
	kTf3TZdEA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ldtfu-00G8rn-8J; Tue, 04 May 2021 11:57:14 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldtfs-00G8rK-8u
 for linux-rockchip@desiato.infradead.org; Tue, 04 May 2021 11:57:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:
 Message-ID:Sender:Reply-To:Content-ID:Content-Description;
 bh=+TvcT4Vuvls3Npx4OJqopdp8usczk5I6wQPyXgKzPFY=; b=iz+D/SOA6b1/dQsS2HI+NeWpjG
 Cn6SxWbO7IlE72siW0dM+9EbOrmSthfXJLYLsLAP6u6YJxo41HWKIWcllqPVmdBnCo525XXp0/6Tj
 Ee3q3kQNW4foELkLTwCzi7L6T7DwKhbp4d1oHnwu9ffmk+Q+K6GMWJ8YHd0dn7DwjArxS3es207RV
 OcItRYyGRHkdWXIB0D92OIfOAoOyJdDVDBMRaZD5BIp2su+ZI5MrYNpz/DjucL2UvEtaSPeU0lcsO
 a2KAfhXC9Adi2GD1dINIEVZ5W0RlrC//+dHG+pjXdAxWETT6yF4nkUDpdtCRq4P+DXCLIBni/Hp19
 q1OkOAWg==;
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldtfp-003wr0-HB
 for linux-rockchip@lists.infradead.org; Tue, 04 May 2021 11:57:10 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 1563B1F424AA
Message-ID: <2db7709801107dbacd464a919451bbafbd335748.camel@collabora.com>
Subject: Re: [PATCH] media: rkvdec: Fix .buf_prepare
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>, 
 linux-media@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org, devel@driverdev.osuosl.org, Mauro
 Carvalho Chehab <mchehab@kernel.org>, Hans Verkuil
 <hverkuil-cisco@xs4all.nl>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, kernel@collabora.com, Adrian Ratiu
 <adrian.ratiu@collabora.com>
Date: Tue, 04 May 2021 08:56:57 -0300
In-Reply-To: <20210504113714.30612-1-andrzej.p@collabora.com>
References: <20210504113714.30612-1-andrzej.p@collabora.com>
Organization: Collabora
User-Agent: Evolution 3.38.2-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210504_045709_719746_78F8E67B 
X-CRM114-Status: GOOD (  21.48  )
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

SGkgQW5kcnplaiwKClRoYW5rcyBhIGxvdCBmb3IgcGlja2luZyB0aGlzIHVwLgoKT24gVHVlLCAy
MDIxLTA1LTA0IGF0IDEzOjM3ICswMjAwLCBBbmRyemVqIFBpZXRyYXNpZXdpY3ogd3JvdGU6Cj4g
RnJvbTogRXplcXVpZWwgR2FyY2lhIDxlemVxdWllbEBjb2xsYWJvcmEuY29tPgo+IAo+IFRoZSBk
cml2ZXIgc2hvdWxkIG9ubHkgc2V0IHRoZSBwYXlsb2FkIG9uIC5idWZfcHJlcGFyZSBpZiB0aGUK
PiBidWZmZXIgaXMgQ0FQVFVSRSB0eXBlLiBJZiBhbiBPVVRQVVQgYnVmZmVyIGhhcyBhIHplcm8g
Ynl0ZXN1c2VkCj4gc2V0IGJ5IHVzZXJzcGFjZSB0aGVuIHY0bDItY29yZSB3aWxsIHNldCBpdCB0
byBidWZmZXIgbGVuZ3RoLgo+IAo+IEZpeGVzOiBjZDMzYzgzMDQ0OGJhICgibWVkaWE6IHJrdmRl
YzogQWRkIHRoZSBya3ZkZWMgZHJpdmVyIikKPiBTaWduZWQtb2ZmLWJ5OiBFemVxdWllbCBHYXJj
aWEgPGV6ZXF1aWVsQGNvbGxhYm9yYS5jb20+Cj4gU2lnbmVkLW9mZi1ieTogQWRyaWFuIFJhdGl1
IDxhZHJpYW4ucmF0aXVAY29sbGFib3JhLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBBbmRyemVqIFBp
ZXRyYXNpZXdpY3ogPGFuZHJ6ZWoucEBjb2xsYWJvcmEuY29tPgo+IAo+IC0tLQo+IEBIYW5zOiBJ
IGhhdmVuJ3QgaGFkIGFueW9uZSBjb21wbGFpbiBhYm91dCB0aGUgaXNzdWUuIFRoZSBmaXggaXMg
bmVlZGVkIGZvcgo+IHRoZSBya3ZkZWMgdnA5IHdvcmssIHNvIEkgdGhpbmsgNS4xNCBpcyBmaW5l
Lgo+IAo+IMKgZHJpdmVycy9zdGFnaW5nL21lZGlhL3JrdmRlYy9ya3ZkZWMuYyB8IDEwICsrKysr
KysrKy0KPiDCoDEgZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkK
PiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL3JrdmRlYy9ya3ZkZWMuYyBi
L2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9ya3ZkZWMvcmt2ZGVjLmMKPiBpbmRleCBkODIxNjYxZDMw
ZjMuLmVmMjE2NjA0MzEyNyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvcmt2
ZGVjL3JrdmRlYy5jCj4gKysrIGIvZHJpdmVycy9zdGFnaW5nL21lZGlhL3JrdmRlYy9ya3ZkZWMu
Ywo+IEBAIC00ODEsNyArNDgxLDE1IEBAIHN0YXRpYyBpbnQgcmt2ZGVjX2J1Zl9wcmVwYXJlKHN0
cnVjdCB2YjJfYnVmZmVyICp2YikKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGlm
ICh2YjJfcGxhbmVfc2l6ZSh2YiwgaSkgPCBzaXplaW1hZ2UpCj4gwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIC1FSU5WQUw7Cj4gwqDCoMKgwqDC
oMKgwqDCoH0KPiAtwqDCoMKgwqDCoMKgwqB2YjJfc2V0X3BsYW5lX3BheWxvYWQodmIsIDAsIGYt
PmZtdC5waXhfbXAucGxhbmVfZm10WzBdLnNpemVpbWFnZSk7Cj4gKwo+ICvCoMKgwqDCoMKgwqDC
oC8qCj4gK8KgwqDCoMKgwqDCoMKgICogQnVmZmVyIGJ5dGVzdXNlZCBpcyB3cml0dGVuIGJ5IGRy
aXZlciBmb3IgQ0FQVFVSRSBidWZmZXJzLgo+ICvCoMKgwqDCoMKgwqDCoCAqIChpZiB1c2Vyc3Bh
Y2UgcGFzc2VzIDAgYnl0ZXN1c2VkIGZvciBPVVRQVVQgYnVmZmVycywgdjRsMi1jb3JlIHNldHMK
PiArwqDCoMKgwqDCoMKgwqAgKiBpdCB0byBidWZmZXIgbGVuZ3RoKS4KPiArwqDCoMKgwqDCoMKg
wqAgKi8KPiArwqDCoMKgwqDCoMKgwqBpZiAoIVY0TDJfVFlQRV9JU19PVVRQVVQodnEtPnR5cGUp
KQoKUGxlYXNlIHVzZSBWNEwyX1RZUEVfSVNfQ0FQVFVSRSBoZXJlLgoKQWxzbywgd2h5IGlzIHRo
aXMgY2hhbmdlIG5lZWRlZCBpbiBya3ZkZWMsIGJ1dCBub3QgaW4gY2VkcnVzCm9yIGhhbnRybz8K
ClRoYW5rcyEKRXplcXVpZWwKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXJvY2tjaGlwCg==
