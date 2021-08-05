Return-Path: <SRS0=V4ex=M4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 35D6EC4338F
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Aug 2021 11:56:42 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2A38B610A8
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Aug 2021 11:56:41 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 2A38B610A8
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=aVAQ+Xdir/l8PP9oZzlrUG76UwLE8SsrQ5Q5xXEerHc=; b=g9N4QdjDmNQBtDFpW3j5vvxOQf
	OnbDJ7QcRmgzzxRA3AzOq1Hc+mA01p5HZOWZJuaXntSd+MoxIQ3ndT0WfYG//CMUfRYQDoLOhszJ+
	DSJtMCIpabR11GMiOfO63BP/gBQxKQ3HjaQAtX+58q0HfciOyetiVt5uQi1Y6sId7aG0a8mbmfIKm
	vDUQEcwxTRCAm1OxUWYH+1q4L41c//o4wfe1CvxVGGhSU0wGoQZtdxe5pfEN4JfGS/Lmgbmg8E3Vc
	kRMh34Hz6TYhhFQiOo1c8sJ3iK8EKA/kqHkacwuhdq83rc43guGy6ov1crII1IlTr1DrrngR3F96C
	rcsA2a7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mBbzG-009J7t-LD; Thu, 05 Aug 2021 11:56:34 +0000
Received: from regular1.263xmail.com ([211.150.70.201])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mBbzD-009J6v-6C
 for linux-rockchip@lists.infradead.org; Thu, 05 Aug 2021 11:56:33 +0000
Received: from localhost (unknown [192.168.167.32])
 by regular1.263xmail.com (Postfix) with ESMTP id B5E78E57;
 Thu,  5 Aug 2021 19:56:19 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from [172.16.12.8] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P49150T140468773971712S1628164578421692_; 
 Thu, 05 Aug 2021 19:56:19 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <d6880ad1a79cbdda5d6582af61c0029c>
X-RL-SENDER: david.wu@rock-chips.com
X-SENDER: wdc@rock-chips.com
X-LOGIN-NAME: david.wu@rock-chips.com
X-FST-TO: linux-iio@vger.kernel.org
X-RCPT-COUNT: 11
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
Subject: Re: [PATCH] iio: adc: rockchip_saradc: just get referenced voltage
 once at probe
To: Jonathan Cameron <Jonathan.Cameron@Huawei.com>
Cc: Simon Xue <xxm@rock-chips.com>, Jonathan Cameron <jic23@kernel.org>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 robh+dt@kernel.org, Johan Jonker <jbx6244@gmail.com>,
 Heiko Stuebner <heiko@sntech.de>, Lars-Peter Clausen <lars@metafoo.de>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, linux-iio@vger.kernel.org
References: <20210802090929.37970-1-xxm@rock-chips.com>
 <20210802114222.00004f3d@Huawei.com>
 <36f6284f-6bc9-d5a4-aac8-5db8b1ecaae1@rock-chips.com>
 <20210803135124.000072fe@Huawei.com>
From: David Wu <david.wu@rock-chips.com>
Message-ID: <8f5385a1-701c-4446-d238-90bee1c03675@rock-chips.com>
Date: Thu, 5 Aug 2021 19:56:18 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210803135124.000072fe@Huawei.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210805_045631_721128_ED79A064 
X-CRM114-Status: GOOD (  32.78  )
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
Content-Type: text/plain; charset="gbk"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgSm9uYXRoYW4sCgrU2iAyMDIxLzgvMyDPws7nODo1MSwgSm9uYXRoYW4gQ2FtZXJvbiDQtLXA
Ogo+IE9uIFR1ZSwgMyBBdWcgMjAyMSAxMTowOTo0NyArMDgwMAo+IERhdmlkIFd1IDxkYXZpZC53
dUByb2NrLWNoaXBzLmNvbT4gd3JvdGU6Cj4gCj4+IEhpIEpvbmF0aGFuLAo+Pgo+PiDU2iAyMDIx
LzgvMiDPws7nNjo0MiwgSm9uYXRoYW4gQ2FtZXJvbiDQtLXAOgo+Pj4gT24gTW9uLCAyIEF1ZyAy
MDIxIDE3OjA5OjI5ICswODAwCj4+PiBTaW1vbiBYdWUgPHh4bUByb2NrLWNoaXBzLmNvbT4gd3Jv
dGU6Cj4+PiAgICAKPj4+PiBGcm9tOiBEYXZpZCBXdSA8ZGF2aWQud3VAcm9jay1jaGlwcy5jb20+
Cj4+Pj4KPj4+PiBUaGUgcmVmZXJlbmNlZCB2b2x0YWdlIGlzIG5vdCBjaGFuZ2VkIGFmdGVyIGlu
aXRpYXRpb24sIHNvIGp1c3Qgb25seQo+Pj4+IGdldCByZWZlcmVuY2VkIHZvbHRhZ2Ugb25jZS4K
Pj4+IEhpIERhdmlkLAo+Pj4KPj4+IElzbid0IHRoaXMgYW4gZXh0ZXJuYWwgcmVmZXJlbmNlIHZv
bHRhZ2U/ICBJZiBzbyBob3cgZG8geW91IGtub3cKPj4+IGl0IGlzIG5vdCBjaGFuZ2VkIGF0IHJ1
bnRpbWU/ICBJdCBtaWdodCBiZSB1bmxpa2VseSBhbmQgbm90IGhhcHBlbgo+Pj4gb24gcGFydGlj
dWxhciBwbGF0Zm9ybXMsIGJ1dCB0aGF0J3Mgbm90IGhlIHNhbWUgYXMgc2F5aW5nIGl0IGNhbiBu
ZXZlcgo+Pj4gaGFwcGVuLiAgQ2xlYXJseSBpdCdzIHJhY2V5IGFueXdheSBpZiB0aGF0IGRvZXMg
aGFwcGVuLCBidXQgd2UgZGVmaW5pdGVseQo+Pj4gZG9uJ3QgZXhwZWN0IGZyZXF1ZW50IHZvbHRh
Z2UgY2hhbmdlcy4KPj4+ICAgIAo+Pgo+PiBUaGUgY3VycmVudCByZWd1bGF0b3IgaXMgbm90IGNo
YW5nZWQgYW5kIG5vdCBzdWJqZWN0IHRvIGV4dGVybmFsCj4+IGNoYW5nZXMsIHRoaXMgY2FuIHJl
ZHVjZSB0aGUgZ2V0dGluZyB2b2x0YWdlLiBBc3N1bWluZyB0aGF0IHRoZXJlIHdpbGwKPj4gYmUg
Y2hhbmdlcyBpbiB0aGUgZnV0dXJlLCB3ZSB0aGVuIGFkZCB0aGUgbm90aWZ5IG9mIHRoZSByZWd1
bGF0b3IsIHNvCj4+IHRoYXQgdGhlIHZvbHRhZ2UgY2hhbmdlIGNhbiBiZSBvYnRhaW5lZC4KPiAK
PiBJZiB0aGlzIHBhdGNoIGFkZGVkIHRoZSBub3RpZmllciB0aGF0IHdvdWxkIGJlIGEgbmljZSBz
b2x1dGlvbiwgYnV0Cj4gcmlnaHQgbm93IGl0IHBvdGVudGlhbGx5IGludHJvZHVjZWQgYSByZWdy
ZXNzaW9uLiBZb3UgaGF2ZSBtYWRlIG1lIGEgbGl0dGxlIGN1cmlvdXMuLi4KPiBBcmUgeW91IHNl
ZWluZyBhIHNpZ25pZmljYW50IGNvc3QgdG8gcXVlcnlpbmcgdGhhdCByZWd1bGF0b3Igdm9sdGFn
ZT8KPiBJZiBzbywgSSdkIGltYWdpbmUgaXQncyBhIGxhY2sgb2YgY2FjaGluZyBpbiB0aGUgcmVn
dWxhdG9yIGRyaXZlciBvciBzaW1pbGFyLgo+IFNjYWxlIHJlYWRiYWNrIHZpYSBzeXNmcyBzaG91
bGRuJ3QgYmUgaW4gYSBmYXN0IHBhdGggYW55d2F5Lgo+IAo+IFlvdSBjYW4ndCBkZXBlbmQgb24g
d2hhdCBib2FyZHMgdG9kYXkgZG8sIGJlY2F1c2Ugc29tZW9uZSB3aXRoIGEgYm9hcmQKPiBidWls
dCB0b21vcnJvdyBtYXkgd2VsbCB1c2UgYW4gb2xkIGtlcm5lbCB3aGljaCBzdXBwb3J0cyB0aGUg
dm9sdGFnZQo+IGNoYW5naW5nLCBhbmQgdGhlbiBzZWUgYSByZWdyZXNzaW9uIHdoZW4gdGhleSB1
cGdyYWRlIHRvIHRoZSBrZXJuZWwKPiBjb250YWluaW5nIHRoaXMgcGF0Y2guCj4gCgpGb3IgYWxs
IGN1cnJlbnQgY2hpcHMsIHRoZSBleHBlY3RlZCB2b2x0YWdlIGlzIGEgZml4ZWQgdm9sdGFnZSwg
YW5kIApkb24ndCB3YW50IHRvIGNoYW5nZSBpdCBpbiBhbnkgcHJvY2Vzcy46LSkKClNvLCBpZiB0
aGUgdm9sdGFnZSBoZXJlIGRvZXMgbm90IGNoYW5nZSwgdGhlbiBpdCBjYW4gYmUgb2J0YWluZWQg
b25jZSBpbiAKcHJvYmUoKSwgd2hpY2ggY2FuIHNhdmUgdGhlIHRpbWUgb2YgZWFjaCBhY3F1aXNp
dGlvbi4gRm9yIGV4YW1wbGUsIHRoZSAKdm9sdGFnZSBvZiB0aGlzIHJlZ3VsYXRvciBpcyBvYnRh
aW5lZCB0aHJvdWdoIGkyYywgd2hpY2ggd2lsbCBpbmNyZWFzZSAKc29tZSBjb25zdW1wdGlvbiBl
dmVyeSB0aW1lLgoKPiBKb25hdGhhbgo+IAo+Pgo+Pj4gSm9uYXRoYW4KPj4+ICAgIAo+Pj4+Cj4+
Pj4gU2lnbmVkLW9mZi1ieTogU2ltb24gWHVlIDx4eG1Acm9jay1jaGlwcy5jb20+Cj4+Pj4gU2ln
bmVkLW9mZi1ieTogRGF2aWQgV3UgPGRhdmlkLnd1QHJvY2stY2hpcHMuY29tPgo+Pj4+IC0tLQo+
Pj4+ICAgIGRyaXZlcnMvaWlvL2FkYy9yb2NrY2hpcF9zYXJhZGMuYyB8IDE2ICsrKysrKysrKy0t
LS0tLS0KPj4+PiAgICAxIGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9u
cygtKQo+Pj4+Cj4+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvaWlvL2FkYy9yb2NrY2hpcF9zYXJh
ZGMuYyBiL2RyaXZlcnMvaWlvL2FkYy9yb2NrY2hpcF9zYXJhZGMuYwo+Pj4+IGluZGV4IGYzZWI4
ZDJlNTBkYy4uY2QzM2MwYjlkM2ViIDEwMDY0NAo+Pj4+IC0tLSBhL2RyaXZlcnMvaWlvL2FkYy9y
b2NrY2hpcF9zYXJhZGMuYwo+Pj4+ICsrKyBiL2RyaXZlcnMvaWlvL2FkYy9yb2NrY2hpcF9zYXJh
ZGMuYwo+Pj4+IEBAIC00OSw2ICs0OSw3IEBAIHN0cnVjdCByb2NrY2hpcF9zYXJhZGMgewo+Pj4+
ICAgIAlzdHJ1Y3QgY2xrCQkqY2xrOwo+Pj4+ICAgIAlzdHJ1Y3QgY29tcGxldGlvbgljb21wbGV0
aW9uOwo+Pj4+ICAgIAlzdHJ1Y3QgcmVndWxhdG9yCSp2cmVmOwo+Pj4+ICsJaW50CQkJdXZfdnJl
ZjsKPj4+PiAgICAJc3RydWN0IHJlc2V0X2NvbnRyb2wJKnJlc2V0Owo+Pj4+ICAgIAljb25zdCBz
dHJ1Y3Qgcm9ja2NoaXBfc2FyYWRjX2RhdGEgKmRhdGE7Cj4+Pj4gICAgCXUxNgkJCWxhc3RfdmFs
Owo+Pj4+IEBAIC0xMDUsMTMgKzEwNiw3IEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfc2FyYWRjX3Jl
YWRfcmF3KHN0cnVjdCBpaW9fZGV2ICppbmRpb19kZXYsCj4+Pj4gICAgCQltdXRleF91bmxvY2so
JmluZGlvX2Rldi0+bWxvY2spOwo+Pj4+ICAgIAkJcmV0dXJuIElJT19WQUxfSU5UOwo+Pj4+ICAg
IAljYXNlIElJT19DSEFOX0lORk9fU0NBTEU6Cj4+Pj4gLQkJcmV0ID0gcmVndWxhdG9yX2dldF92
b2x0YWdlKGluZm8tPnZyZWYpOwo+Pj4+IC0JCWlmIChyZXQgPCAwKSB7Cj4+Pj4gLQkJCWRldl9l
cnIoJmluZGlvX2Rldi0+ZGV2LCAiZmFpbGVkIHRvIGdldCB2b2x0YWdlXG4iKTsKPj4+PiAtCQkJ
cmV0dXJuIHJldDsKPj4+PiAtCQl9Cj4+Pj4gLQo+Pj4+IC0JCSp2YWwgPSByZXQgLyAxMDAwOwo+
Pj4+ICsJCSp2YWwgPSBpbmZvLT51dl92cmVmIC8gMTAwMDsKPj4+PiAgICAJCSp2YWwyID0gY2hh
bi0+c2Nhbl90eXBlLnJlYWxiaXRzOwo+Pj4+ICAgIAkJcmV0dXJuIElJT19WQUxfRlJBQ1RJT05B
TF9MT0cyOwo+Pj4+ICAgIAlkZWZhdWx0Ogo+Pj4+IEBAIC00MTAsNiArNDA1LDEzIEBAIHN0YXRp
YyBpbnQgcm9ja2NoaXBfc2FyYWRjX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYp
Cj4+Pj4gICAgCQlyZXR1cm4gcmV0Owo+Pj4+ICAgIAl9Cj4+Pj4gICAgCj4+Pj4gKwlpbmZvLT51
dl92cmVmID0gcmVndWxhdG9yX2dldF92b2x0YWdlKGluZm8tPnZyZWYpOwo+Pj4+ICsJaWYgKGlu
Zm8tPnV2X3ZyZWYgPCAwKSB7Cj4+Pj4gKwkJZGV2X2VycigmcGRldi0+ZGV2LCAiZmFpbGVkIHRv
IGdldCB2b2x0YWdlXG4iKTsKPj4+PiArCQlyZXQgPSBpbmZvLT51dl92cmVmOwo+Pj4+ICsJCXJl
dHVybiByZXQ7Cj4+Pj4gKwl9Cj4+Pj4gKwo+Pj4+ICAgIAlyZXQgPSBjbGtfcHJlcGFyZV9lbmFi
bGUoaW5mby0+cGNsayk7Cj4+Pj4gICAgCWlmIChyZXQgPCAwKSB7Cj4+Pj4gICAgCQlkZXZfZXJy
KCZwZGV2LT5kZXYsICJmYWlsZWQgdG8gZW5hYmxlIHBjbGtcbiIpOwo+Pj4KPj4+Cj4+Pgo+Pj4g
ICAgCj4+Cj4+Cj4gCj4gCj4gCj4gCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hp
cEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcm9ja2NoaXAK
