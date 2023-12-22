Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 992D8C46CD8
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Dec 2023 10:38:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jiwps6W2y8QaOkV8HTPQgB+6vPaXki4MmOn12LyZgdw=; b=PxIJ2Hubu1ZOaS
	lDhRGcjfnFuSFpX7rnoNC1x+CtC4+pLdKg/7nw5p+GcCN1LJY/XMJcxDg3YOzBl+IUobmWHks1gqg
	SSJewqw0duQ09oXqrnk1UTaMcWLY7SYQgWsOjRnqIKSdQKtBqKLLlFCcVN/t5WHde8ajals/e8qHm
	8HUw4v6EBgqONMu7qZ2kYCAhuzzN33FRq1VZxexeR8y7qvhhvi22zbJeyIs4DNfczqXixBSRQ8iIW
	xfqwMHnV//xbTm1utf9fLncnhIQylcA7xZrhfb8gCsN9k/drSR+stWybFTOoxkdj/fb16MRR7nvbv
	sx3/pc6HRMwr/gJjNnpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGcvF-005Yhf-18;
	Fri, 22 Dec 2023 10:38:29 +0000
Received: from mail-m127228.xmail.ntesmail.com ([115.236.127.228])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rGcvC-005YgZ-0Z;
	Fri, 22 Dec 2023 10:38:28 +0000
DKIM-Signature: a=rsa-sha256;
	b=MDzHYzZYYMKiuAb0H9f+9p49+AvE/kR1FV64dqf4egat372paSoVnIe2HDoSX8bLe+DjXFF+ftNxOjWRrmVdWndOCXAcmYs8zm1aTxVzXnqylsFMp9zXyTbRi8CvYg6NwBys4AHRdsFX8ML41m1yh83duM9xt/i/btkBNgjuZ2I=;
	s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=cYx3cEyew4wgHXkUGMpRDrNMXv9JyJmRzTLBW8rcTjA=;
	h=date:mime-version:subject:message-id:from;
Received: from [192.168.60.102] (unknown [103.29.142.67])
	by mail-m12779.qiye.163.com (Hmail) with ESMTPA id BEC107801AA;
	Fri, 22 Dec 2023 18:37:59 +0800 (CST)
Message-ID: <74e497f5-0361-47f7-a410-4b20d3526d52@rock-chips.com>
Date: Fri, 22 Dec 2023 18:37:57 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/3] ARM: dts: rockchip: Add psci for rk3036
Content-Language: en-US
To: Alex Bee <knaerzche@gmail.com>, Andy Yan <andyshrk@163.com>,
 heiko@sntech.de
Cc: krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 zhengxing@rock-chips.com
References: <20231218105523.2478315-1-andyshrk@163.com>
 <20231218105523.2478315-2-andyshrk@163.com>
 <da10e2fc-3179-4bd5-88ed-b4d5f64a7191@gmail.com>
 <28216be5-810f-40d6-850b-a0fc590ffa3c@rock-chips.com>
 <a82481ca-b578-49a4-b0d0-974b6ee65c98@gmail.com>
From: Andy Yan <andy.yan@rock-chips.com>
In-Reply-To: <a82481ca-b578-49a4-b0d0-974b6ee65c98@gmail.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVkaSBkeVkMZTEMeSE1DTB8ZGVUTARMWGhIXJBQOD1
	lXWRgSC1lBWUpLSFVJQlVKT0lVTUxZV1kWGg8SFR0UWUFZT0tIVUpISkJIT1VKS0tVS1kG
X-HM-Tid: 0a8c911a7d22b24fkuuubec107801aa
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6OTY6ECo4Qzw5FR4VIjIZLDk5
	AzAaCzZVSlVKTEtISU9KT0NJSU5IVTMWGhIXVRoVHwJVAhoVOwkUGBBWGBMSCwhVGBQWRVlXWRIL
	WUFZSktIVUlCVUpPSVVNTFlXWQgBWUFOSkpDNwY+
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231222_023826_679957_8E018E4F 
X-CRM114-Status: GOOD (  19.83  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgQWxleCwKCk9uIDEyLzIxLzIzIDIzOjU4LCBBbGV4IEJlZSB3cm90ZToKPiBIaSBBbmR5LAo+
IAo+IEFtIDIxLjEyLjIzIHVtIDAyOjA3IHNjaHJpZWIgQW5keSBZYW46Cj4+IEhpIEFsZXg6Cj4+
Cj4+IE9uIDEyLzIwLzIzIDE5OjE2LCBBbGV4IEJlZSB3cm90ZToKPj4+IEhpIEFuZHksCj4+PiBB
bSAxOC4xMi4yMyB1bSAxMTo1NSBzY2hyaWViIEFuZHkgWWFuOgo+Pj4+IEZyb206IEFuZHkgWWFu
IDxhbmR5LnlhbkByb2NrLWNoaXBzLmNvbT4KPj4+Pgo+Pj4+IFRoZSBzeXN0ZW0gd2lsbCBoYW5n
IGF0IGJyaW5ndXAgc2Vjb25kYXJ5IENQVXMKPj4+PiB3aXRob3V0IHBzY2kgbm9kZS4KPj4+Pgo+
Pj4+IFNpZ25lZC1vZmYtYnk6IEFuZHkgWWFuIDxhbmR5LnlhbkByb2NrLWNoaXBzLmNvbT4KPj4+
Pgo+Pj4+IC0tLQo+Pj4+Cj4+Pj4gKG5vIGNoYW5nZXMgc2luY2UgdjEpCj4+Pj4KPj4+PiDCoCBh
cmNoL2FybS9ib290L2R0cy9yb2NrY2hpcC9yazMwMzYuZHRzaSB8IDUgKysrKysKPj4+PiDCoCAx
IGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspCj4+Pj4KPj4+PiBkaWZmIC0tZ2l0IGEvYXJj
aC9hcm0vYm9vdC9kdHMvcm9ja2NoaXAvcmszMDM2LmR0c2kgYi9hcmNoL2FybS9ib290L2R0cy9y
b2NrY2hpcC9yazMwMzYuZHRzaQo+Pj4+IGluZGV4IDc4Njg2ZmM3MmNlNi4uNTM0NDgwMzQ0MmEx
IDEwMDY0NAo+Pj4+IC0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzAzNi5kdHNp
Cj4+Pj4gKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvcm9ja2NoaXAvcmszMDM2LmR0c2kKPj4+PiBA
QCAtNjcsNiArNjcsMTEgQEAgZGlzcGxheS1zdWJzeXN0ZW0gewo+Pj4+IMKgwqDCoMKgwqDCoMKg
wqDCoCBwb3J0cyA9IDwmdm9wX291dD47Cj4+Pj4gwqDCoMKgwqDCoCB9Owo+Pj4+ICvCoMKgwqAg
cHNjaSB7Cj4+Pj4gK8KgwqDCoMKgwqDCoMKgIGNvbXBhdGlibGUgPSAiYXJtLHBzY2ktMS4wIjsK
Pj4+PiArwqDCoMKgwqDCoMKgwqAgbWV0aG9kID0gInNtYyI7Cj4+Pj4gK8KgwqDCoCB9Owo+Pj4+
ICsKPj4+IEkgZG9uJ3QgdGhpbmsgdGhhdCdzIGFuIGdvb2QgaWRlYS4gCj4+Cj4+IFdoeT8KPiBJ
dCdzIG9ubHkgd2hhdCBJJ3ZlIGJlZW4gdG9sZCBiZWZvcmU6IFdlIHNob3Vkbid0IGFkZCBwcm9w
ZXJ0aWVzIHdoaWNoCj4gZGVwZW5kIG9uIG5vbi11cHN0cmVhbSBzb2Z0d2FyZSAoaWYgYW4gdXBz
dHJlYW0gYWx0ZXJuYXRpdmUgZXhpc3RzKS4gQWxzbwoKPiBJJ20gbm90IHN1cmUgd2hhdCBoYXBw
ZW5zIGlmIHNvbWVib2R5IGRvZXNuJ3TCoHVzZSBkb3duc3RyZWFtIGJvb3Rsb2FkZXIKPiBhbmQg
UFNDSSBjYW4ndCBiZSBmb3VuZDogV291bGQgdGhlIGJvYXJkIHN0aWxsIGJlIGFibGUgdG8gYm9v
dD8KClRoZSBwc2NpIGlzIHJlbGVhc2VkIGhlcmVsWzBdLgpBbmQgYWxzbywgdGhlcmUgYXJlIG9u
bHkgdHdvIHJrMzAzNiBiYXNlZCBib2FyZHMgaW4gbWFpbmxpbmU6CnJrMzAzNi1ldmIscmszMDM2
LWtleWxpbiwgYm90aCBvZiB0aGVtIGZyb20gcm9ja2NoaXAuCkFuZCB0aGUgbWFpbmxpbmUgc3Vw
cG9ydCBvZiB0aGVzZSBib2FyZHMgYnJva2VuIGZyb20gbGludXggNS43KDIwMjAsIHNlZSBQQVRD
SCAzKSwKbm8gb25lIHJlcG9ydCB0aGlzIGJyb2tlbiB1bnRpbCBJIHRyeSB0byBydW4gdGhpcyBi
b2FyZCBub3cuClNvIG1heWJlIHRoZXJlIGlzIG5vIHN1Y2ggc29tZWJvZHkgd2lsbCBydW4gaW50
byB0aGlzIHNpdHVhdGlvbi4KCgpbMF1odHRwczovL2dpdGh1Yi5jb20vcm9ja2NoaXAtbGludXgv
cmtiaW4vdHJlZS9tYXN0ZXIvYmluL3JrMzAKCj4+Cj4+PiBZb3UgbW9zdCBsaWtlbHkgbmVlZCB0
aGF0IGJlY2F1c2UgeW91IGhhdmUgZG93bnN0cmVhbSBib290bG9hZGVyIGluc3RhbGxlZCBvbiB0
aGlzIGJvYXJkLiBQU0NJIGltcGxlbWVudGF0aW9uIHRha2VzIHBsYWNlIGluIFRFRS1PUyBmb3Ig
Um9ja2NoaXBzIEFSTSBTb0NzLiBUaGVyZSBpcyBubyBzdXBwb3J0IGZvciBSSzMwMzYgaW4gdXBz
dHJlYW0gb3AtdGVlIE9TLiBJdCdzIHByZXR0eSBtdWNoIHRoZSBzYW1lIGZvciBSSzMxMjggYW5k
IFJLMzI4OC4KPj4+IElmIHlvdSB1c2UgdXBzdHJlYW0gdS1ib290IGl0IHNob3VsZCBiZSBnb29k
IGFzLWlzLgo+Pgo+PiBVbmZvcnR1bmF0ZWx5LCB1cHN0cmVhbSB1LWJvb3QgYWxzbyBjYW5ub3Qg
Ym9vdCB1cCBvbiB0aGlzIGJvYXJkLgo+PiBBdCBwcmVzZW50LCBJIGhhdmVuJ3QgaGFkIHRpbWUg
dG8gZGVidWcgd2hhdCBpcyBnb2luZyBvbi4KPj4KPj4gQW5vdGhlciByZWFzb24gSSB3YW50IHRv
IHVzZSBkb3duc3RyZWFtIHUtYm9vdCBpdCBpczogSSB0cnkgcnVuCj4+IHRoaXMgYm9hcmQgd2l0
aCBtYWlubGluZSBqdXN0IGJlY2F1c2UgaSB3YW50IHRvIHRlc3Qgc29tZSBjb21tdW5pdHkKPj4g
cGF0Y2hlcyBhYm91dCBpbm5vLWhkbWkgZHJpdmVyLCBhcyB5b3Ugc2FpZCAidGhlIGlubm8taGRt
aSBkcml2ZXIgY3VycmVudGx5IGdldHMgYSBsb3Qgb2YgYXR0ZW50aW9uIlswXQo+Pgo+IFRoYW5r
cyBmb3IgaGVscGluZyB0ZXN0aW5nIHRoaXMuCj4gCj4gQWxleAo+IAo+PiBXaXRoIGEgZG93bnN0
cmVhbSB1LWJvb3QgSSBjYW4gZWFzeSBzd2l0Y2ggYmV0d2VlbiB1cHN0cmVhbSBrZXJuZWwgYW5k
IGRvd25zdHJlYW0ga2VybmVsKG5vIG5lZWQgdG8gcmVwbGFjZSBvdGhlciBjb21wb25lbnRzKQo+
PiBpZiBJIGZvdW5kIHNvbWUgZnVuY3Rpb24gaXMgbm90IHdvcmsgYXMgZXhwZWN0ZWQuCj4+Cj4+
Cj4+IFswXWh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcHJvamVjdC9saW51eC1yb2NrY2hp
cC9jb3Zlci8yMDIzMTIxOTE3MDEwMC4xODg4MDAtMS1rbmFlcnpjaGVAZ21haWwuY29tLwo+Pj4K
Pj4+IEFsZXgKPj4+PiDCoMKgwqDCoMKgIHRpbWVyIHsKPj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAg
Y29tcGF0aWJsZSA9ICJhcm0sYXJtdjctdGltZXIiOwo+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBh
cm0sY3B1LXJlZ2lzdGVycy1ub3QtZnctY29uZmlndXJlZDsKPj4+Cj4+Pgo+Pj4gX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+IExpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdAo+Pj4gTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwo+Pj4g
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
