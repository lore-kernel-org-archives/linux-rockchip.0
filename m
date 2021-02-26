Return-Path: <SRS0=dCsk=H4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.6 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5217DC433E0
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Feb 2021 06:40:39 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C90A8601FA
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Feb 2021 06:40:38 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C90A8601FA
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:Subject:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bpaPopi0TRiF0wQgXKb20z9kuG0cu6S+sgSId20OExM=; b=JJFeLAtm9QX3njLmb1057vsT/
	PqwwHvYFDY0fdgpFuUPcdJDEpU2VHB/gGFn85h7HAi04pjVW/ESg3ggC4N812q9eC1Kptwer3Grpk
	RbSb5bXLdKAWwtBRifuezoQA2o6K4DNPU5uzBJOlZaYpiQD+E7YucAVqPqttSAQEldC9ydDgk9IQT
	fC9fLejYd47clt1xNAXsDnxWHqKZww8MkkneCJeNwPVOlKfy9fKeLVUnSAMYR2LimmV/ZSxzwKcej
	UfRjoj7bg7UydTvmSFcjNTmTUBInYyOGXP0x7DRIkc8+NhTzpnSDf9iyEzjFWT7wzD6dnriL7HPQG
	/Yu2M1YHQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lFWni-0002oi-IZ; Fri, 26 Feb 2021 06:40:34 +0000
Received: from lucky1.263xmail.com ([211.157.147.134])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lFWnf-0002o2-4Q
 for linux-rockchip@lists.infradead.org; Fri, 26 Feb 2021 06:40:33 +0000
Received: from localhost (unknown [192.168.167.69])
 by lucky1.263xmail.com (Postfix) with ESMTP id 4951AC7808
 for <linux-rockchip@lists.infradead.org>; Fri, 26 Feb 2021 14:31:34 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-SKE-CHECKED: 0
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from [172.16.12.76] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P17142T139833611925248S1614321093851649_; 
 Fri, 26 Feb 2021 14:31:34 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <e8efcc451388392ce8ab5f81dcfbde4b>
X-RL-SENDER: hjc@rock-chips.com
X-SENDER: hjc@rock-chips.com
X-LOGIN-NAME: hjc@rock-chips.com
X-FST-TO: hjc@rock-chips.com
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
From: Huang Jiachai <hjc@rock-chips.com>
Subject: =?UTF-8?Q?Re=3a_=5bPATCH=5d_drm/rockchip=3a_Require_the_YTR_modifie?=
 =?UTF-8?B?ciBmb3IgQUZCQ+OAkOivt+azqOaEj++8jOmCruS7tueUsWxpbnV4LXJvY2tjaGlw?=
 =?UTF-8?Q?-bounces+sandy=2ehuang=3drock-chips=2ecom=40lists=2einfradead=2eo?=
 =?UTF-8?B?cmfku6Plj5HjgJE=?=
To: linux-rockchip@lists.infradead.org
References: <20200811202631.3603-1-alyssa.rosenzweig@collabora.com>
 <CAPj87rMS5zxY6sK4N8zVZF9MHThmURj6kuso=G5+MQDVmNjC4Q@mail.gmail.com>
 <d17ea299-b21e-b298-9098-f47b780be106@rock-chips.com>
 <CAPj87rMBt9bJhPcyX--xa_wMse9JCttHCfz1PkFXFwHcRheuJg@mail.gmail.com>
Message-ID: <64cff231-e76a-cbc7-ff58-7d249b94e09a@rock-chips.com>
Date: Fri, 26 Feb 2021 14:31:34 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <CAPj87rMBt9bJhPcyX--xa_wMse9JCttHCfz1PkFXFwHcRheuJg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210226_014032_219282_984B62FA 
X-CRM114-Status: GOOD (  16.41  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Content-Type: text/plain; charset="gbk"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgRGFuaWVsLAoK1NogMjAyMS8yLzI1IDIwOjQ2LCBEYW5pZWwgU3RvbmUg0LS1wDoKPiBIaSBT
YW5keSwKPgo+IE9uIFRodSwgMjUgRmViIDIwMjEgYXQgMDI6MTcsIEh1YW5nIEppYWNoYWkgPGhq
Y0Byb2NrLWNoaXBzLmNvbT4gd3JvdGU6Cj4+ICAgICAgIFJLMzM5OSBhbmQgcHgzMCBjYW4gc3Vw
cG9ydCBZVFIgYWZiYyBmb3JtYXRbUkdCIG9ubHldLCB0aGVyZSBpcyBhbgo+PiBoaWRkZW4gY29u
dHJvbCBiaXQgdG8gY29udHJvbCB0aGlzLgo+IEdyZWF0LCB0aGFua3MgZm9yIHByb3ZpZGluZyB0
aGlzIGluZm9ybWF0aW9uIQo+Cj4+IEhpIEFseXNzYSwKPj4KPj4gICAgICAgQ2FuIHlvdSBhZGQg
dGhlIGZvbGxvd2luZyBwYXRjaCB0byB0ZXN0IG9uIHlvdXIgcGxhdGZvcm0/IHRoYW5rcy4KPj4K
Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9w
LmMKPj4gYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcC5jCj4+IGlu
ZGV4IDk5YmRiNWEyYTE4NS4uMDc4MGFkNDYyMzBhIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcC5jCj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wLmMKPj4gQEAgLTEwNSw3ICsxMDUsNyBAQAo+PiAg
ICAjZGVmaW5lIEFGQkNfRk1UX1U4VThVOFU4ICAgICAgMHg1Cj4+ICAgICNkZWZpbmUgQUZCQ19G
TVRfVThVOFU4ICAgICAgICAgICAgICAgIDB4NAo+Pgo+PiAtI2RlZmluZSBBRkJDX1RJTEVfMTZ4
MTYgICAgICAgICAgICAgICAgQklUKDQpCj4+ICsjZGVmaW5lIEFGQkNfRk1UX1lUUiAgICAgICAg
ICAgQklUKDQpCj4+Cj4+ICAgIC8qCj4+ICAgICAqIFRoZSBjb2VmZmljaWVudHMgb2YgdGhlIGZv
bGxvd2luZyBtYXRyaXggYXJlIGFsbCBmaXhlZCBwb2ludHMuCj4+IEBAIC05NTIsNyArOTUyLDkg
QEAgc3RhdGljIHZvaWQgdm9wX3BsYW5lX2F0b21pY191cGRhdGUoc3RydWN0IGRybV9wbGFuZQo+
PiAqcGxhbmUsCj4+ICAgICAgICAgICBpZiAocm9ja2NoaXBfYWZiYyhmYi0+bW9kaWZpZXIpKSB7
Cj4+ICAgICAgICAgICAgICAgICAgIGludCBhZmJjX2Zvcm1hdCA9Cj4+IHZvcF9jb252ZXJ0X2Fm
YmNfZm9ybWF0KGZiLT5mb3JtYXQtPmZvcm1hdCk7Cj4+Cj4+IC0gICAgICAgICAgICAgICBWT1Bf
QUZCQ19TRVQodm9wLCBmb3JtYXQsIGFmYmNfZm9ybWF0IHwgQUZCQ19USUxFXzE2eDE2KTsKPj4g
KyAgICAgICAgICAgICAgIGlmIChmYi0+bW9kaWZpZXIgJiBBRkJDX0ZPUk1BVF9NT0RfWVRSKQo+
PiArICAgICAgICAgICAgICAgICAgICAgICBhZmJjX2Zvcm1hdCB8PSBBRkJDX0ZNVF9ZVFI7Cj4+
ICsgICAgICAgICAgICAgICBWT1BfQUZCQ19TRVQodm9wLCBmb3JtYXQsIGFmYmNfZm9ybWF0KTsK
Pj4gICAgICAgICAgICAgICAgICAgVk9QX0FGQkNfU0VUKHZvcCwgaHJlZ19ibG9ja19zcGxpdCwg
MCk7Cj4+ICAgICAgICAgICAgICAgICAgIFZPUF9BRkJDX1NFVCh2b3AsIHdpbl9zZWwsIFZPUF9X
SU5fVE9fSU5ERVgodm9wX3dpbikpOwo+PiAgICAgICAgICAgICAgICAgICBWT1BfQUZCQ19TRVQo
dm9wLCBoZHJfcHRyLCBkbWFfYWRkcik7Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
cm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcC5oCj4+IGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlw
L3JvY2tjaGlwX2RybV92b3AuaAo+PiBpbmRleCA0YTIwOTljYjU4MmUuLjQ4ZTEzMWI4OGMyMyAx
MDA2NDQKPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3Au
aAo+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcC5oCj4+
IEBAIC0yMCw2ICsyMCw3IEBACj4+ICAgICNkZWZpbmUgUk9DS0NISVBfQUZCQ19NT0QgXAo+PiAg
ICAgICAgICAgRFJNX0ZPUk1BVF9NT0RfQVJNX0FGQkMoIFwKPj4gICAgICAgICAgICAgICAgICAg
QUZCQ19GT1JNQVRfTU9EX0JMT0NLX1NJWkVfMTZ4MTYgfCBBRkJDX0ZPUk1BVF9NT0RfU1BBUlNF
IFwKPj4gKyAgICAgICAgICAgICAgICAgICAgICAgfCBBRkJDX0ZPUk1BVF9NT0RfWVRSIFwKPj4g
ICAgICAgICAgICkKPiBMb29rcyBnb29kIC0gdGhpcyB3aWxsIGhlbHAgdXMgY29uZmlybS4gSSB0
aGluayB0aGUgY29tcGxldGUgcGF0Y2gKPiB0aG91Z2ggd291bGQgYWR2ZXJ0aXNlIGJvdGggWVRS
IGFuZCBub24tWVRSIG1vZGlmaWVyczogcGVyIEFybSdzCj4gcmVjb21tZW5kYXRpb24sIGl0IHNv
dW5kcyBsaWtlIFtBWF1SR0I4ODg4IGZvcm1hdHMgc2hvdWxkIG9ubHkKPiBhZHZlcnRpc2UgdGhl
IG5vbi1ZVFIgdmFyaWFudCwgYW5kIFtBWF1CR1I4ODg4IHNob3VsZCBhZHZlcnRpc2UgYm90aAo+
IHZhcmlhbnRzLiBEb2VzIHRoYXQgbWFrZSBzZW5zZT8KCnllcywgUkdCIGZvcm1hdCBoYXZlIFlU
UiBhbmQgbm9uLVlUUiB2YXJpYW50LCBZVVYgZm9ybWF0IG9ubHkgaGF2ZSAKbm9uLVlUUiB2YXJp
YW50LgoKPgo+IENoZWVycywKPiBEYW5pZWwKPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCj4gTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Cj4gTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwo+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAKPgo+Cj4KCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
