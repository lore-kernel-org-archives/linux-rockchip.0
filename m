Return-Path: <SRS0=VuRY=NW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.6 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8812BC432BE
	for <linux-rockchip@archiver.kernel.org>; Tue, 31 Aug 2021 11:57:03 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4EE6D60698
	for <linux-rockchip@archiver.kernel.org>; Tue, 31 Aug 2021 11:57:03 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 4EE6D60698
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vHLFUDrWNhRszf20b+HKGR7xS0rb7NXxFPsGtsXreOU=; b=FKjDQkVxPqYbEV1jLo7RlF3LYU
	1IjV/V10vJLoEst0lNQS894uOJ8rGQ4EUHFRRU6+m6GhmHP95XLf1z0wHmDooVp2cu1xTFK5N7PwU
	+k1uWiYW4/cgknXFozW3ma0vvDWGcN/RvJCIAO0IdkiY16CCmGcKmJb5QpyWjBKvIWmLJR9bbYYOT
	l/bFNiVFFVdGiq6lluVDFtsxbizVBntpOcRNClSyHaOs58mqC45BQojsi805C9+ueZVu9lwugunlb
	X7CVIMEUCAEhKG9VMq+Wljya0WaCJk2F+UBZdBiI9UIF0JxKkKiCrwsNGl4TpJ5zSrXLPyUh9hbg4
	11m2dMdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mL2Nv-002BUI-6v; Tue, 31 Aug 2021 11:56:59 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mL2Ne-002BQG-DR; Tue, 31 Aug 2021 11:56:44 +0000
Received: from [IPv6:2a01:e0a:4cb:a870:2d6:5982:f5be:998c] (unknown
 [IPv6:2a01:e0a:4cb:a870:2d6:5982:f5be:998c])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: benjamin.gaignard)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id D52781F42F46;
 Tue, 31 Aug 2021 12:56:39 +0100 (BST)
Subject: Re: [PATCH 1/2] media: hevc: Remove RPS named flags
To: John Cox <jc@kynesim.co.uk>
Cc: mchehab@kernel.org, p.zabel@pengutronix.de, gregkh@linuxfoundation.org,
 mripard@kernel.org, paul.kocialkowski@bootlin.com, wens@csie.org,
 jernej.skrabec@gmail.com, hverkuil-cisco@xs4all.nl,
 ezequiel@vanguardiasur.com.ar, linux-media@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
 linux-sunxi@lists.linux.dev
References: <20210831094900.203283-1-benjamin.gaignard@collabora.com>
 <20210831094900.203283-2-benjamin.gaignard@collabora.com>
 <4g2sigpsttf80t72c7spdqqjvvijnths2d@4ax.com>
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Message-ID: <fdf6417e-09cd-f0a0-a351-fccd64bfc8c7@collabora.com>
Date: Tue, 31 Aug 2021 13:56:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <4g2sigpsttf80t72c7spdqqjvvijnths2d@4ax.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210831_045642_782884_33CFB0DA 
X-CRM114-Status: GOOD (  31.90  )
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

CkxlIDMxLzA4LzIwMjEgw6AgMTM6MDgsIEpvaG4gQ294IGEgw6ljcml0wqA6Cj4+IE1hcmtpbmcg
YSBwaWN0dXJlIGFzIGxvbmctdGVybSByZWZlcmVuY2UgaXMgdmFsaWQgZm9yIERQQiBidXQgbm90
IGZvciBSUFMuCj4+IENoYW5nZSBmbGFnIG5hbWUgdG8gbWF0Y2ggd2l0aCBpdCBkZXNjcmlwdGlv
biBpbiBIRVZDIHNwZWMgY2hhcGl0ZXIKPj4gIjguMy4yIERlY29kaW5nIHByb2Nlc3MgZm9yIHJl
ZmVyZW5jZSBwaWN0dXJlIHNldCIuCj4+IFJlbW92ZSB0aGUgb3RoZXIgdW51c2VkIFJQUyBmbGFn
cy4KPj4KPj4gU2lnbmVkLW9mZi1ieTogQmVuamFtaW4gR2FpZ25hcmQgPGJlbmphbWluLmdhaWdu
YXJkQGNvbGxhYm9yYS5jb20+Cj4+IC0tLQo+PiBEb2N1bWVudGF0aW9uL3VzZXJzcGFjZS1hcGkv
bWVkaWEvdjRsL2V4dC1jdHJscy1jb2RlYy5yc3QgfCA2ICsrLS0tLQo+PiBkcml2ZXJzL3N0YWdp
bmcvbWVkaWEvaGFudHJvL2hhbnRyb19nMl9oZXZjX2RlYy5jICAgICAgICAgfCAyICstCj4+IGRy
aXZlcnMvc3RhZ2luZy9tZWRpYS9zdW54aS9jZWRydXMvY2VkcnVzX2gyNjUuYyAgICAgICAgICB8
IDIgKy0KPj4gaW5jbHVkZS9tZWRpYS9oZXZjLWN0cmxzLmggICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIHwgNCArLS0tCj4+IDQgZmlsZXMgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCA5
IGRlbGV0aW9ucygtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi91c2Vyc3BhY2Ut
YXBpL21lZGlhL3Y0bC9leHQtY3RybHMtY29kZWMucnN0IGIvRG9jdW1lbnRhdGlvbi91c2Vyc3Bh
Y2UtYXBpL21lZGlhL3Y0bC9leHQtY3RybHMtY29kZWMucnN0Cj4+IGluZGV4IDM4NjVhY2I5ZTBm
ZC4uZWZmMzNjNTExMDkwIDEwMDY0NAo+PiAtLS0gYS9Eb2N1bWVudGF0aW9uL3VzZXJzcGFjZS1h
cGkvbWVkaWEvdjRsL2V4dC1jdHJscy1jb2RlYy5yc3QKPj4gKysrIGIvRG9jdW1lbnRhdGlvbi91
c2Vyc3BhY2UtYXBpL21lZGlhL3Y0bC9leHQtY3RybHMtY29kZWMucnN0Cj4+IEBAIC0zMTM4LDEw
ICszMTM4LDggQEAgZW51bSB2NGwyX21wZWdfdmlkZW9faGV2Y19zaXplX29mX2xlbmd0aF9maWVs
ZCAtCj4+IAk6Yzp0eXBlOmB0aW1ldmFsYCBpbiBzdHJ1Y3QgOmM6dHlwZTpgdjRsMl9idWZmZXJg
IHRvIGEgX191NjQuCj4+ICAgICAgKiAtIF9fdTgKPj4gICAgICAgIC0gYGBycHNgYAo+PiAtICAg
ICAgLSBUaGUgcmVmZXJlbmNlIHNldCBmb3IgdGhlIHJlZmVyZW5jZSBmcmFtZQo+PiAtICAgICAg
ICAoVjRMMl9IRVZDX0RQQl9FTlRSWV9SUFNfU1RfQ1VSUl9CRUZPUkUsCj4+IC0gICAgICAgIFY0
TDJfSEVWQ19EUEJfRU5UUllfUlBTX1NUX0NVUlJfQUZURVIgb3IKPj4gLSAgICAgICAgVjRMMl9I
RVZDX0RQQl9FTlRSWV9SUFNfTFRfQ1VSUikKPj4gKyAgICAgIC0gTG9uZyB0ZXJtIGZsYWcgZm9y
IHRoZSByZWZlcmVuY2UgZnJhbWUKPj4gKyAgICAgICAgKFY0TDJfSEVWQ19EUEJfRU5UUllfTE9O
R19URVJNX1JFRkVSRU5DRSkKPj4gICAgICAqIC0gX191OAo+PiAgICAgICAgLSBgYGZpZWxkX3Bp
Y2BgCj4+ICAgICAgICAtIFdoZXRoZXIgdGhlIHJlZmVyZW5jZSBpcyBhIGZpZWxkIHBpY3R1cmUg
b3IgYSBmcmFtZS4KPiBJZiB5b3UgYXJlIGdvaW5nIHRvIHJlbW92ZSBhbGwgdGhlIFJQUyB2YWx1
ZXMgZXhjZXB0IGZvciBMb25nIFRlcm0KPiB3b3VsZG4ndCBpdCBiZSBiZXR0ZXIgdG8gcmVuYW1l
IHRoZSBmaWVsZCB0b28sIGVpdGhlciB0byAiZmxhZ3MiIG9yIGEKPiBib29sICJpc19sb25nX3Rl
cm0iPyAgSWYgd2UgaGF2ZSBhIGZpZWxkIGNhbGxlZCBSUFMgaXQgcmVhbGx5IHNob3VsZCBiZQo+
IGFibGUgdG8gaGF2ZSBhIHZhbHVlIGZvciBhbnkgb2YgdGhlIDUgdmFsaWQgUmVmZXJlbmNlIFBp
Y3R1cmUgU2V0cyB0aGF0Cj4gYSBEUEIgZW50cnkgY2FuIGJlbG9uZyB0by4KCkkgd2lsbCBzZW5k
IGEgdjIgYW5kIHJlbmFtZSBycHMgaW50byBmbGFncy4KCj4KPiBBcyBhIHNpZGUgbm90ZSwgaXQg
aXMgaW1wb3J0YW50IHRvIG15IGNvZGUgdGhhdCB0aGUgRFBCIGFycmF5IGNvbnRhaW5zCj4gYWxs
IHRoZSBEUEIgZW50cmllcyBub3QganVzdCB0aGUgb25lcyB0aGF0IGFyZSBpbiB1c2UgaW4gdGhp
cyBmcmFtZS4gIEkKPiBuZWVkIHRoZW0gc28gSSBjYW4gdHJhY2sgd2hpY2ggZnJhbWVzIGhhdmUg
bGVmdCB0aGUgRFBCIHNvIEkgY2FuCj4gcmV1c2UvZnJlZSB0aGUgTVYgdGFibGVzIGFzc29jaWF0
ZWQgd2l0aCB0aGVtICh5ZXMgSSBjb3VsZCBrZWVwIG9uZSBmb3IKPiBldmVyeSBlbnRyeSBpbiB0
aGUgY2FwdHVyZSBRIGJ1dCB0aGF0IGlzIGdlbmVyYWxseSB3YXN0ZWZ1bCBvbiBtZW1vcnkKPiBh
bmQgdGhlIFBpIGlzIG9mdGVuIG1lbW9yeSBjb25zdHJhaW5lZCkuIFNvIG1heWJlIHVwZGF0ZSB0
aGUgZG9jbiBvbiBEUEIKPiB0byBtYWtlIHRoaXMgZXhwbGljaXQgcGxlYXNlPyAoSSBzdXNwZWN0
IHRoYXQgY3VycmVudCBjb2RlIGRvZXMgdGhpcwo+IGFueXdheSBhcyBpdCBpcyBnZW5lcmFsbHkg
ZWFzaWVyIHRvIGRvIHRoYW4gdG8gbm90LikKClRoYXQgc2hvdWxkIGJlIGluIGFub3RoZXIgcGF0
Y2ggOi0pCgpCZW5qYW1pbgoKPgo+IEpvaG4gQ294Cj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
c3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJvX2cyX2hldmNfZGVjLmMgYi9kcml2ZXJzL3N0YWdp
bmcvbWVkaWEvaGFudHJvL2hhbnRyb19nMl9oZXZjX2RlYy5jCj4+IGluZGV4IDllYTg2NGNhNTYy
NS4uYmU0NmIzYzI4YjE3IDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFu
dHJvL2hhbnRyb19nMl9oZXZjX2RlYy5jCj4+ICsrKyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9o
YW50cm8vaGFudHJvX2cyX2hldmNfZGVjLmMKPj4gQEAgLTUwMyw3ICs1MDMsNyBAQCBzdGF0aWMg
aW50IHNldF9yZWYoc3RydWN0IGhhbnRyb19jdHggKmN0eCkKPj4gCQljb21wcmVzc19sdW1hX2Fk
ZHIgPSBsdW1hX2FkZHIgKyBjb21wcmVzc19sdW1hX29mZnNldDsKPj4gCQljb21wcmVzc19jaHJv
bWFfYWRkciA9IGx1bWFfYWRkciArIGNvbXByZXNzX2Nocm9tYV9vZmZzZXQ7Cj4+Cj4+IC0JCWlm
IChkcGJbaV0ucnBzID09IFY0TDJfSEVWQ19EUEJfRU5UUllfUlBTX0xUX0NVUlIpCj4+ICsJCWlm
IChkcGJbaV0ucnBzID09IFY0TDJfSEVWQ19EUEJfRU5UUllfTE9OR19URVJNX1JFRkVSRU5DRSkK
Pj4gCQkJZHBiX2xvbmd0ZXJtX2UgfD0gQklUKFY0TDJfSEVWQ19EUEJfRU5UUklFU19OVU1fTUFY
IC0gMSAtIGkpOwo+Pgo+PiAJCS8qCj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvbWVk
aWEvc3VueGkvY2VkcnVzL2NlZHJ1c19oMjY1LmMgYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvc3Vu
eGkvY2VkcnVzL2NlZHJ1c19oMjY1LmMKPj4gaW5kZXggZWYwMzExYTE2ZDAxLi42MDg2Y2MzNWU4
Y2MgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9zdW54aS9jZWRydXMvY2Vk
cnVzX2gyNjUuYwo+PiArKysgYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvc3VueGkvY2VkcnVzL2Nl
ZHJ1c19oMjY1LmMKPj4gQEAgLTE2OSw3ICsxNjksNyBAQCBzdGF0aWMgdm9pZCBjZWRydXNfaDI2
NV9yZWZfcGljX2xpc3Rfd3JpdGUoc3RydWN0IGNlZHJ1c19kZXYgKmRldiwKPj4gCQl1bnNpZ25l
ZCBpbnQgaW5kZXggPSBsaXN0W2ldOwo+PiAJCXU4IHZhbHVlID0gbGlzdFtpXTsKPj4KPj4gLQkJ
aWYgKGRwYltpbmRleF0ucnBzID09IFY0TDJfSEVWQ19EUEJfRU5UUllfUlBTX0xUX0NVUlIpCj4+
ICsJCWlmIChkcGJbaW5kZXhdLnJwcyA9PSBWNEwyX0hFVkNfRFBCX0VOVFJZX0xPTkdfVEVSTV9S
RUZFUkVOQ0UpCj4+IAkJCXZhbHVlIHw9IFZFX0RFQ19IMjY1X1NSQU1fUkVGX1BJQ19MSVNUX0xU
X1JFRjsKPj4KPj4gCQkvKiBFYWNoIFNSQU0gd29yZCBnYXRoZXJzIHVwIHRvIDQgcmVmZXJlbmNl
cy4gKi8KPj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvbWVkaWEvaGV2Yy1jdHJscy5oIGIvaW5jbHVk
ZS9tZWRpYS9oZXZjLWN0cmxzLmgKPj4gaW5kZXggZWY2M2JjMjA1NzU2Li5mNTg3NDQ4ZWY0OTUg
MTAwNjQ0Cj4+IC0tLSBhL2luY2x1ZGUvbWVkaWEvaGV2Yy1jdHJscy5oCj4+ICsrKyBiL2luY2x1
ZGUvbWVkaWEvaGV2Yy1jdHJscy5oCj4+IEBAIC0xMjcsOSArMTI3LDcgQEAgc3RydWN0IHY0bDJf
Y3RybF9oZXZjX3BwcyB7Cj4+IAlfX3U2NAlmbGFnczsKPj4gfTsKPj4KPj4gLSNkZWZpbmUgVjRM
Ml9IRVZDX0RQQl9FTlRSWV9SUFNfU1RfQ1VSUl9CRUZPUkUJMHgwMQo+PiAtI2RlZmluZSBWNEwy
X0hFVkNfRFBCX0VOVFJZX1JQU19TVF9DVVJSX0FGVEVSCTB4MDIKPj4gLSNkZWZpbmUgVjRMMl9I
RVZDX0RQQl9FTlRSWV9SUFNfTFRfQ1VSUgkJMHgwMwo+PiArI2RlZmluZSBWNEwyX0hFVkNfRFBC
X0VOVFJZX0xPTkdfVEVSTV9SRUZFUkVOQ0UJMHgwMQo+Pgo+PiAjZGVmaW5lIFY0TDJfSEVWQ19E
UEJfRU5UUklFU19OVU1fTUFYCQkxNgo+PgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tj
aGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
