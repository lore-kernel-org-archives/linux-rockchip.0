Return-Path: <SRS0=vRnG=HY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6993EC433E0
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Feb 2021 04:52:39 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 055D264DA8
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Feb 2021 04:52:38 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 055D264DA8
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=164cziKkYM/RfhRilaGIVlysGRBT0iilqaBah0n/phc=; b=XQcvl8Vj8FTEERgAZhUW3hUtI
	/ojdcCGG5spNGO29kTCQ4v2XM4xPClApk3NtS9Dgvh8uD1wO7vLLnMrz/Q044DVUVPxfnmJRHwC0E
	WeCuam31C6zfDJDrzbvrvpNTUAxqbgyByccLEGOXT0T/h/0SZKjI5AI1LKbiJjEjKRDuHuuC6UOK8
	YYmG4Um88yB+GuYeSrMBxPJFbJBkHY8VN2bHswqc65iwUyOrxG5lE3Ru2eUOk9yMlDZULtMZPC6EG
	MbIMERGbF/NTzTtfpksvhl7p8ucXLNpvMeo14OA0CTBYTdXnjd8yaYZwrvKhoHI9QtxXtHA0DD/mb
	2Ese8hICQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lE3Cv-0006Ak-MA; Mon, 22 Feb 2021 04:52:29 +0000
Received: from regular1.263xmail.com ([211.150.70.200])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lE3Cs-0006AI-Oi
 for linux-rockchip@lists.infradead.org; Mon, 22 Feb 2021 04:52:29 +0000
Received: from localhost (unknown [192.168.167.70])
 by regular1.263xmail.com (Postfix) with ESMTP id 92E8D1D4E;
 Mon, 22 Feb 2021 12:52:16 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [192.168.31.83] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P31654T140708696835840S1613969534586218_; 
 Mon, 22 Feb 2021 12:52:15 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <2a94f6a5a32cf46005af8d15dccf1c05>
X-RL-SENDER: xxm@rock-chips.com
X-SENDER: xxm@rock-chips.com
X-LOGIN-NAME: xxm@rock-chips.com
X-FST-TO: shawn.lin@rock-chips.com
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
Subject: =?UTF-8?Q?Re=3a_=5bPATCH_v4_2/2=5d_PCI=3a_rockchip=3a_add_DesignWar?=
 =?UTF-8?B?ZSBiYXNlZCBQQ0llIGNvbnRyb2xsZXLjgJDor7fms6jmhI/vvIzpgq7ku7bnlLFr?=
 =?UTF-8?B?c3dpbGN6eW5za2lAZ21haWwuY29t5Luj5Y+R44CR?=
To: =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>
References: <20210127022406.820975-1-xxm@rock-chips.com>
 <20210127022519.821025-1-xxm@rock-chips.com> <YDMW6OmnnrIgt1RR@rocinante>
From: xxm <xxm@rock-chips.com>
Message-ID: <29259d39-7b46-6ce3-0b13-98840f1ad0bb@rock-chips.com>
Date: Mon, 22 Feb 2021 12:52:14 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <YDMW6OmnnrIgt1RR@rocinante>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210221_235227_990117_50F14B2C 
X-CRM114-Status: GOOD (  28.80  )
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
Cc: devicetree@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
 Shawn Lin <shawn.lin@rock-chips.com>, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, Bjorn Helgaas <helgaas@kernel.org>,
 Johan Jonker <jbx6244@gmail.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgS3J6eXN6dG9mLAoKQWxsIHlvdXIgY29tbWVudHMgd2lsbCBiZSBmaXhlZCBpbiBuZXh0IHBh
dGNoLCB0aGFua3MgZm9yIHlvdXIgcmV2aWV3LgoK5ZyoIDIwMjEvMi8yMiAxMDoyOCwgS3J6eXN6
dG9mIFdpbGN6ecWEc2tpIOWGmemBkzoKPiBIaSBTaW1vbiwKPgo+IFRoZSBzdWJqZWN0IHNob3Vs
ZCBzdGFydCB3aXRoIGEgY2FwaXRhbCBsZXR0ZXIuCj4KPiBbLi4uXQo+PiBwY2llLWR3LXJvY2tj
aGlwIGlzIGJhc2VkIG9uIERXQyBJUC4gQnV0IHBjaWUtcm9ja2NoaXAtaG9zdAo+PiBpcyBSb2Nr
Y2hpcCBkZXNpZ25lZCBJUCB3aGljaCBpcyBvbmx5IHVzZWQgZm9yIFJLMzM5OS4gU28gYWxsIHRo
ZSBmb2xsb3dpbmcKPj4gbm9uLVJLMzM5OSBTb0NzIHNob3VsZCB1c2UgdGhpcyBkcml2ZXIuCj4g
WW91IG1pZ2h0IG5lZWQgdG8gd3JhcCB0aGUgbG9uZyBsaW5lIGluIHRoZSBhYm92ZS4KPgo+IFRo
ZSBjb21taXQgbWVzc2FnZSBhYm92ZSBjb3VsZCB1c2Ugc29tZSBwb2xpc2ggaW4gdGVybXMgb2Yg
d29yZGluZyBhbmQKPiBhZGRpbmcgbW9yZSBjb250ZXh0IC0gd2hhdCBhcmUgeW91IGFkZGluZywg
d2hhdCBpcyB0aGlzIGRyaXZlciBnb2luZyB0bwo+IHN1cHBvcnQuICBGb3IgZXhhbXBsZSwgd2hh
dCBhcmUgdGhlICJhbGwgdGhlIGZvbGxvd2luZyIgU29Dcz8gIFNob3VsZAo+IHRoZXJlIGJlIGEg
bGlzdD8gIE9yIGRpZCB5b3UgbWVhbiAiYWxsIHRoZSBvdGhlciAoLi4uKSIsIGV0Yy4KPgo+IFsu
Li5dCj4+ICtjb25maWcgUENJRV9ST0NLQ0hJUF9EV19IT1NUCj4+ICsJYm9vbCAiUm9ja2NoaXAg
RGVzaWduV2FyZSBQQ0llIGNvbnRyb2xsZXIiCj4+ICsJc2VsZWN0IFBDSUVfRFcKPj4gKwlzZWxl
Y3QgUENJRV9EV19IT1NUCj4+ICsJZGVwZW5kcyBvbiBBUkNIX1JPQ0tDSElQIHx8IENPTVBJTEVf
VEVTVAo+PiArCWRlcGVuZHMgb24gT0YKPj4gKwloZWxwCj4+ICsJICBFbmFibGVzIHN1cHBvcnQg
Zm9yIHRoZSBEVyBQQ0llIGNvbnRyb2xsZXIgaW4gdGhlIFJvY2tjaGlwIFNvQy4KPiBQZXJoYXBz
IHJlcGxhY2luZyAiRFciIHdpdGggIkRlc2lnbldhcmUiIHdvdWxkIGJlIGJldHRlci4gIEFsc28s
IGRvIHlvdQo+IHdhbnQgdG8gbWVudGlvbiBoZXJlIC0gZm9yIHRoZSBzYWtlIG9mIHRoZSBmdXR1
cmUgdXNlciAtIHRoYXQgdGhpcyBub3QKPiBpbnRlbmRlZCB0byBzdXBwb3J0IFJLMzM5OSBhcyBw
ZXIgdGhlIGNvbW1pdCBtZXNzYWdlLgo+Cj4gWy4uLl0KPj4gKy8qCj4+ICsgKiBQQ0llIGhvc3Qg
Y29udHJvbGxlciBkcml2ZXIgZm9yIFJvY2tjaGlwIFNvQ3MKPiBBIG5pdHBpY2suICBNaXNzaW5n
IHBlcmlvZCBhdCB0aGUgZW5kIG9mIHRoZSBzZW50ZW5jZS4KPgo+IFsuLi5dCj4+ICtzdGF0aWMg
aW50IHJvY2tjaGlwX3BjaWVfbGlua191cChzdHJ1Y3QgZHdfcGNpZSAqcGNpKQo+PiArewo+PiAr
CXN0cnVjdCByb2NrY2hpcF9wY2llICpyb2NrY2hpcCA9IHRvX3JvY2tjaGlwX3BjaWUocGNpKTsK
Pj4gKwl1MzIgdmFsID0gcm9ja2NoaXBfcGNpZV9yZWFkbF9hcGIocm9ja2NoaXAsIFBDSUVfQ0xJ
RU5UX0xUU1NNX1NUQVRVUyk7Cj4+ICsKPj4gKwlpZiAoKHZhbCAmIChQQ0lFX1JETEhfTElOS1VQ
IHwgUENJRV9TTUxIX0xJTktVUCkpID09IDB4MzAwMDAgJiYKPiBbLi4uXQo+Cj4gQSBzdWdnZXN0
aW9uLiAgV291bGQgaXQgbWFrZSBzZW5zZSB0byBhZGQgYSBkZWZpbml0aW9uIGZvciB0aGlzCj4g
b3Blbi1jb2RlZCB2YWx1ZSBvZiAweDMwMDAwIGFib3ZlPwo+Cj4+ICtzdGF0aWMgdm9pZCByb2Nr
Y2hpcF9wY2llX2Zhc3RfbGlua19zZXR1cChzdHJ1Y3Qgcm9ja2NoaXBfcGNpZSAqcm9ja2NoaXAp
Cj4+ICt7Cj4+ICsJdTMyIHZhbDsKPj4gKwo+PiArCS8qIExUU1NNIEVOIGN0cmwgbW9kZSAqLwo+
IFsuLi5dCj4KPiBEb2VzIHRoaXMgY29tbWVudCBhYm92ZSBzdGFuZHMgZm9yICJMVFNTTSBlbmFi
bGUgY29udHJvbCBtb2RlIj8KPgo+PiArc3RhdGljIGludCByb2NrY2hpcF9wY2llX3BoeV9pbml0
KHN0cnVjdCByb2NrY2hpcF9wY2llICpyb2NrY2hpcCkKPj4gK3sKPj4gKwlpbnQgcmV0Owo+PiAr
CXN0cnVjdCBkZXZpY2UgKmRldiA9IHJvY2tjaGlwLT5wY2kuZGV2Owo+IFRoZXNlIHR3byB2YXJp
YWJsZXMgc2hvdWxkIHN3YXAgcGxhY2UgdG8ga2VlcCBvcmRlciBvZiB1c2UsIGFuZCB0byBtYXRj
aAo+IGhvdyBpdCBoYXMgYmVlbiBkb25lIGV2ZXJ5d2hlcmUgZWxzZSBpbiB0aGlzIGRyaXZlcnMu
Cj4KPj4gKwo+PiArCXJvY2tjaGlwLT5waHkgPSBkZXZtX3BoeV9nZXQoZGV2LCAicGNpZS1waHki
KTsKPj4gKwlpZiAoSVNfRVJSKHJvY2tjaGlwLT5waHkpKQo+PiArCQlyZXR1cm4gZGV2X2Vycl9w
cm9iZShkZXYsIFBUUl9FUlIocm9ja2NoaXAtPnBoeSksCj4+ICsJCQkJICAgICAibWlzc2luZyBw
aHlcbiIpOwo+IEkgd291bGQgYmUgIlBIWSIgaGVyZS4KPgo+PiArCXJldCA9IHBoeV9pbml0KHJv
Y2tjaGlwLT5waHkpOwo+PiArCWlmIChyZXQgPCAwKQo+PiArCQlyZXR1cm4gcmV0Owo+PiArCj4+
ICsJcGh5X3Bvd2VyX29uKHJvY2tjaGlwLT5waHkpOwo+IFsuLi5dCj4KPiBXZSBzaG91bGQgcHJv
YmFibHkgY2hlY2sgcGh5X3Bvd2VyX29uKCkgZm9yIGEgcG9zc2libGUgZmFpbHVyZS4gIFNvbWUK
PiBwbGF0Zm9ybXMgYWxzbyBjbGVhbiB1cCBvbiBhIGZhaWx1cmUgZnJvbSBwaHlfaW5pdCgpIGFu
ZCBwaHlfcG93ZXJfb24oKSwKPiBidXQgSSBhbSBub3Qgc3VyZSBpZiB0aGlzIHBhcnRpY3VsYXIg
cGxhdGZvcm0gd291bGQgcmVxdWlyZSBhbnl0aGluZy4KPgo+IFsuLi5dCj4+ICsJLyogRE9OJ1Qg
TU9WRSBNRTogbXVzdCBiZSBlbmFibGUgYmVmb3JlIHBoeSBpbml0ICovCj4gSXQgd291bGQgYmUg
IlBIWSIgaGVyZS4KPgo+PiArCXJvY2tjaGlwLT52cGNpZTN2MyA9IGRldm1fcmVndWxhdG9yX2dl
dF9vcHRpb25hbChkZXYsICJ2cGNpZTN2MyIpOwo+PiArCWlmIChJU19FUlIocm9ja2NoaXAtPnZw
Y2llM3YzKSkKPj4gKwkJcmV0dXJuIGRldl9lcnJfcHJvYmUoZGV2LCBQVFJfRVJSKHJvY2tjaGlw
LT5yc3QpLAo+PiArCQkJCSAgICAgImZhaWxlZCB0byBnZXQgdnBjaWUzdjMgcmVndWxhdG9yXG4i
KTsKPj4gKwo+PiArCWlmIChyb2NrY2hpcC0+dnBjaWUzdjMpIHsKPj4gKwkJcmV0ID0gcmVndWxh
dG9yX2VuYWJsZShyb2NrY2hpcC0+dnBjaWUzdjMpOwo+PiArCQlpZiAocmV0KSB7Cj4+ICsJCQlk
ZXZfZXJyKGRldiwgImZhaWwgdG8gZW5hYmxlIHZwY2llM3YzIHJlZ3VsYXRvclxuIik7Cj4gSXQg
d291bGQgYmUgImZhaWxlZCIgaGVyZS4KPgo+IFsuLi5dCj4+ICtzdGF0aWMgY29uc3Qgc3RydWN0
IG9mX2RldmljZV9pZCByb2NrY2hpcF9wY2llX29mX21hdGNoW10gPSB7Cj4+ICsJeyAuY29tcGF0
aWJsZSA9ICJyb2NrY2hpcCxyazM1NjgtcGNpZSIsIH0sCj4+ICsJeyAvKiBzZW50aW5lbCAqLyB9
LAo+PiArfTsKPiBXZSBjb3VsZCBwcm9iYWJseSBkcm9wIHRoZSBjb21tZW50IGFib3V0IHRoZSAi
c2VudGluZWwiIGZyb20gdGhlIGFib3ZlLgo+Cj4gS3J6eXN6dG9mCj4KPgoKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
