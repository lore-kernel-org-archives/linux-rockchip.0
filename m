Return-Path: <SRS0=drtE=MH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 278CBC07E96
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Jul 2021 09:50:57 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C1BDF611AB
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Jul 2021 09:50:56 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C1BDF611AB
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=76BV1g6GY+6sjCmndxfJvM3hU6w7CRBdnF8M9K+wsbE=; b=xg7S9E7QxzxjFfbA0Fe0EBXAiI
	EowIqrgpxGBB89dvBSSQtVStXqwvbkuqUcUvk42njgCShc+YwzCZLtKeCObPRfskDcv8HBk54NX/S
	2ZEamnXUHlwdLlHxVN6zJMiEY+flTU/y3/i74GgZk09cswuCN8zEYLM/ScmMYeQEX/c6+RJfOyt3q
	Jnoha2umVZIBd6wdFfAPXJvJHnd9pKKpli+v1PDpI+P6x3L43JuZE9LUVX/arhEErD91h2HGkYA1j
	e75YtZXOQKRWALR8JFPRKoR4T5wmnAvMxuWODsDEnqf3CnuM4eYP/LsrC2Hv5/doPkg9LnEHODC+c
	ZBHq39TA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m3y13-000Kl4-96; Thu, 15 Jul 2021 09:50:49 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m3xuK-000IGZ-FE; Thu, 15 Jul 2021 09:43:56 +0000
Received: from [IPv6:2a01:e0a:4cb:a870:674e:7061:b49f:bcc0] (unknown
 [IPv6:2a01:e0a:4cb:a870:674e:7061:b49f:bcc0])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: benjamin.gaignard)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 77EB61F4167D;
 Thu, 15 Jul 2021 10:43:47 +0100 (BST)
Subject: Re: [PATCH v4 8/9] media: hevc: Add scaling matrix control
To: Ezequiel Garcia <ezequiel@collabora.com>, hverkuil@xs4all.nl,
 p.zabel@pengutronix.de, mchehab@kernel.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, festevam@gmail.com, gregkh@linuxfoundation.org,
 mripard@kernel.org, paul.kocialkowski@bootlin.com, wens@csie.org,
 jernej.skrabec@siol.net, emil.l.velikov@gmail.com, andrzej.p@collabora.com,
 jc@kynesim.co.uk, jernej.skrabec@gmail.com, nicolas@ndufresne.ca,
 cphealy@gmail.com
Cc: kernel@pengutronix.de, linux-imx@nxp.com, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20210625141143.577998-1-benjamin.gaignard@collabora.com>
 <20210625141143.577998-9-benjamin.gaignard@collabora.com>
 <043580ca84a9f3bf38ee633eda910a19781e9e76.camel@collabora.com>
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Message-ID: <d73ec20f-f3ee-a1d3-4cd9-fbe623c60d38@collabora.com>
Date: Thu, 15 Jul 2021 11:43:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <043580ca84a9f3bf38ee633eda910a19781e9e76.camel@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210715_024352_706616_8E99E593 
X-CRM114-Status: GOOD (  31.76  )
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

CkxlIDEzLzA3LzIwMjEgw6AgMDA6MjEsIEV6ZXF1aWVsIEdhcmNpYSBhIMOpY3JpdMKgOgo+IEhp
IEJlbmphbWluLAo+Cj4gSSBiZWxpZXZlIHRoZSBzY2FsaW5nIG1hdHJpeCB1QVBJIHBhdGNoKGVz
KSBhbmQgdGhlIHN1cHBvcnQKPiBpbiBIYW50cm8gRzIgY291bGQgYmUgbW92ZWQgdG8gaXRzIG93
biBzZXJpZXMgYW5kIG1heWJlCj4gbWVyZ2VkIHNvb25lciB0aGFuIHRoZSByZXN0ICh3aGljaCBt
YXkgbmVlZCBtb3JlIGRpc2N1c3Npb24pLgo+Cj4gQ291cGxlIHJlbWFya3MgYmVsb3cuCj4gICAK
PiBPbiBGcmksIDIwMjEtMDYtMjUgYXQgMTY6MTEgKzAyMDAsIEJlbmphbWluIEdhaWduYXJkIHdy
b3RlOgo+PiBIRVZDIHNjYWxpbmcgbGlzdHMgYXJlIHVzZWQgZm9yIHRoZSBzY2FsaW5nIHByb2Nl
c3MgZm9yIHRyYW5zZm9ybQo+PiBjb2VmZmljaWVudHMuCj4+IFY0TDJfSEVWQ19TUFNfRkxBR19T
Q0FMSU5HX0xJU1RfRU5BQkxFRCBoYXMgdG8gc2V0IHdoZW4gdGhleSBhcmUKPj4gZW5jb2RlZCBp
biB0aGUgYml0c3RyZWFtLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBCZW5qYW1pbiBHYWlnbmFyZCA8
YmVuamFtaW4uZ2FpZ25hcmRAY29sbGFib3JhLmNvbT4KPj4gLS0tCj4+IE5vdGU6IFY0TDJfSEVW
Q19TUFNfRkxBR19TQ0FMSU5HX0xJU1RfRU5BQkxFRCBpcyBub3QgY2hhbmdlIGJ5IHRoaXMKPj4g
cGF0Y2guIFRoZXJlIGlzIGEgdGhyZWFkIGFib3V0IHRoZSBuYW1pbmcvdXNhZ2Ugb2YgdGhpcyBm
bGFnIGhlcmU6Cj4+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LWFybS1rZXJuZWwvMjAy
MTA2MTAxNTQ0NDIuODA2MTA3LTgtYmVuamFtaW4uZ2FpZ25hcmRAY29sbGFib3JhLmNvbS8KPj4g
YnV0IHRoYXQgZG9lc24ndCBjb25jZXJuIHRoZSBzY2FsaW5nIG1hdHJpeCBjb250cm9sIGJ5IGl0
c2VsZi4KPj4KPiBJZiBJIGFtIHJlYWRpbmcgdGhlIHNwZWMgY29ycmVjdGx5LCB3ZSBoYXZlIGZp
ZWxkcyBpbgo+IFNQUyAoc2NhbGluZ19saXN0X2VuYWJsZWRfZmxhZywgc2NhbGluZ19saXN0X2Rh
dGFfcHJlc2VudF9mbGFnKQo+IGFuZCBQUFMgKHNjYWxpbmdfbGlzdF9kYXRhX3ByZXNlbnRfZmxh
ZykuCj4KPiBXZSBkb24ndCBuZWVkIGFsbCB0aGF0LCBzaW5jZSBhbGwgYSBkcml2ZXIgbmVlZHMg
dG8ga25vdwo+IGlzIHdoZXRoZXIgYSBzY2FsaW5nIGxpc3QgaXMgdG8gYmUgYXBwbGllZCBmb3Ig
dGhlIGN1cnJlbnQgZnJhbWUuCj4gICAgCj4gV291bGQgeW91IG1pbmQgYWRkaW5nIGEgcGF0Y2gg
bW92aW5nIHRoZSBmbGFnIHRvIHRoZSBQUFM/CgpFeHRyYWN0IGZyb20gdGhlIHNwZWM6Ci0gc2Nh
bGluZ19saXN0X2VuYWJsZWRfZmxhZyBlcXVhbCAxIHNwZWNpZmllcyB0aGF0IGEgc2NhbGluZyBs
aXN0IGlzIHVzZWQgZm9yIHNjYWxpbmcgcHJvY2VzcyBmb3IgdHJhbnNmb3JtIGNvZWZmaWNpZW50
cy4KLSBzcHNfc2NhbGluZ19saXN0X2RhdGFfcHJlc2VudF9mbGFnIGVxdWFsIHRvIDEgc3BlY2lm
aWVzIHRoYXQgdGhlIHNjYWxpbmdfbGlzdF9kYXRhKCApIHN5bnRheCBzdHJ1Y3R1cmUgaXMgcHJl
c2VudCBpbiB0aGUgU1BTLgotIHBwc19zY2FsaW5nX2xpc3RfZGF0YV9wcmVzZW50X2ZsYWcgZXF1
YWwgdG8gMSBzcGVjaWZpZXMgdGhhdCBwYXJhbWV0ZXJzIGFyZSBwcmVzZW50IGluIHRoZSBQUFMg
dG8gbW9kaWZ5IHRoZSBzY2FsaW5nIGxpc3RzIHNwZWNpZmllZCBieSB0aGUgYWN0aXZlIFNQUy4K
CkZvciBtZSBWNEwyX0hFVkNfU1BTX0ZMQUdfU0NBTElOR19MSVNUX0VOQUJMRUQgcmVwcmVzZW50
IHNjYWxpbmdfbGlzdF9lbmFibGVkX2ZsYWcgd2hpbGUgdGhlIG90aGVyIGFyZQp1c2VkIHRvIGJ1
aWxkIHRoZSBzY2FsaW5nIGxpc3RzIHZhbHVlcy4gU28gaXQgaXMgZ29vZCBuYW1lZCBmcm9tIG15
IHBvaW50IG9mIHZpZXcuCgo+Cj4+IHZlcnNpb24gMjoKPj4gIMKgLSBGaXggc3RydWN0dXJlIG5h
bWUgaW4gZXh0LWN0cmxzLWNvZGVjLnJzdAo+Pgo+PiAgwqAuLi4vbWVkaWEvdjRsL2V4dC1jdHJs
cy1jb2RlYy5yc3TCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfCA0NSArKysrKysrKysrKysrKysr
KysrCj4+ICDCoC4uLi9tZWRpYS92NGwvdmlkaW9jLXF1ZXJ5Y3RybC5yc3TCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIHzCoCA2ICsrKwo+PiAgwqBkcml2ZXJzL21lZGlhL3Y0bDItY29yZS92NGwyLWN0
cmxzLWNvcmUuY8KgwqDCoMKgIHzCoCA2ICsrKwo+PiAgwqBkcml2ZXJzL21lZGlhL3Y0bDItY29y
ZS92NGwyLWN0cmxzLWRlZnMuY8KgwqDCoMKgIHzCoCA0ICsrCj4+ICDCoGluY2x1ZGUvbWVkaWEv
aGV2Yy1jdHJscy5owqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfCAxMSAr
KysrKwo+PiAgwqA1IGZpbGVzIGNoYW5nZWQsIDcyIGluc2VydGlvbnMoKykKPj4KPj4gZGlmZiAt
LWdpdCBhL0RvY3VtZW50YXRpb24vdXNlcnNwYWNlLWFwaS9tZWRpYS92NGwvZXh0LWN0cmxzLWNv
ZGVjLnJzdCBiL0RvY3VtZW50YXRpb24vdXNlcnNwYWNlLWFwaS9tZWRpYS92NGwvZXh0LWN0cmxz
LWNvZGVjLnJzdAo+PiBpbmRleCBkYzA5NmE1NTYyY2QuLjM4NjVhY2I5ZTBmZCAxMDA2NDQKPj4g
LS0tIGEvRG9jdW1lbnRhdGlvbi91c2Vyc3BhY2UtYXBpL21lZGlhL3Y0bC9leHQtY3RybHMtY29k
ZWMucnN0Cj4+ICsrKyBiL0RvY3VtZW50YXRpb24vdXNlcnNwYWNlLWFwaS9tZWRpYS92NGwvZXh0
LWN0cmxzLWNvZGVjLnJzdAo+PiBAQCAtMzA3MSw2ICszMDcxLDUxIEBAIGVudW0gdjRsMl9tcGVn
X3ZpZGVvX2hldmNfc2l6ZV9vZl9sZW5ndGhfZmllbGQgLQo+PiAgIAo+PiAgwqDCoMKgwqAgXG5v
cm1hbHNpemUKPj4gICAKPj4gK2BgVjRMMl9DSURfTVBFR19WSURFT19IRVZDX1NDQUxJTkdfTUFU
UklYIChzdHJ1Y3QpYGAKPj4gK8KgwqDCoCBTcGVjaWZpZXMgdGhlIEhFVkMgc2NhbGluZyBtYXRy
aXggcGFyYW1ldGVycyB1c2VkIGZvciB0aGUgc2NhbGluZyBwcm9jZXNzCj4+ICvCoMKgwqAgZm9y
IHRyYW5zZm9ybSBjb2VmZmljaWVudHMuCj4+ICvCoMKgwqAgVGhlc2UgbWF0cml4IGFuZCBwYXJh
bWV0ZXJzIGFyZSBkZWZpbmVkIGFjY29yZGluZyB0byA6cmVmOmBoZXZjYC4KPj4gK8KgwqDCoCBU
aGV5IGFyZSBkZXNjcmliZWQgaW4gc2VjdGlvbiA3LjQuNSAiU2NhbGluZyBsaXN0IGRhdGEgc2Vt
YW50aWNzIiBvZgo+PiArwqDCoMKgIHRoZSBzcGVjaWZpY2F0aW9uLgo+PiArCj4gVGhpcyBuZWVk
cyBzb21lIGFkZGl0aW9uYWwgZG9jdW1lbnRhdGlvbiBhYm91dCB0aGUgb3JkZXIgb2YgdGhlIGxp
c3RzLgo+IFNlZSB0aGUgZG9jcyB0aGF0IHdlJ3ZlIGFkZGVkIGZvciB0aGUgc2NhbGluZ19saXN0
X3t9IGZpZWxkcyBpbgo+IFY0TDJfQ0lEX1NUQVRFTEVTU19IMjY0X1NDQUxJTkdfTUFUUklYLgoK
SSB3aWxsIGRvIGRlZGljYXRlZCBwYXRjaGVzIGZvciBzY2FsaW5nIGxpc3RzIGZlYXR1cmUgYW5k
IGFkZCB0aGF0LgoKQmVuamFtaW4KCj4KPiBUaGFua3MhCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
