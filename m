Return-Path: <SRS0=4kB8=LD=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1 autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2AFBBC48BCD
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Jun 2021 02:41:09 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8A228610A2
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Jun 2021 02:41:08 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8A228610A2
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Fr55S1qIJ9q4lPKI7u9Xu/ejpZ0rd/Q9/zgl5Pz8etE=; b=O2u0We6T4r/ffjHAaPF1/A5FaG
	uWEDaprkF5yyQHPt8OOnUgeFUi8BBjaj89WczIfkLHqNX+A8feqLxRTmNheIxPG0XIjaX1bFA5orG
	2YcQoRHqynVRMUA4mhwOj2X6Dtp7uWdtEYrMidncIOh6Q9Ttd9BYLUK71DvWrHYZslCUWhncsyr+Y
	Z0f+hnr41Ds8P8ikWWcw/7gafXGPSCC72FdopsWMy0z8nBzHF5qS4tNthaM7LP8vhMYPU41igl/v4
	R1bwqL0DOtLlw/Jzj0r+/t1bfu6LyeHqvXe1aALYOzUZV53vFMfwL9dGoFMNeiqALzJS7rY+SdQ9D
	1hU5DMDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lqo9R-00BRov-4v; Wed, 09 Jun 2021 02:41:05 +0000
Received: from regular1.263xmail.com ([211.150.70.196])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lqo9C-00BRkR-Jq; Wed, 09 Jun 2021 02:40:52 +0000
Received: from localhost (unknown [192.168.167.235])
 by regular1.263xmail.com (Postfix) with ESMTP id 164081F5D;
 Wed,  9 Jun 2021 10:40:41 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [172.16.12.120] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P31748T140095126476544S1623206439537590_; 
 Wed, 09 Jun 2021 10:40:40 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <109c2c5a014b780e9cd049b63178e813>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-arm-kernel@lists.infradead.org
X-RCPT-COUNT: 10
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
Subject: Re: [PATCH v4 1/6] dt-bindings: spi: spi-rockchip: add description
 for rv1126 and rk3568
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
 Jon Lin <jon.lin@rock-chips.com>, broonie@kernel.org,
 Johan Jonker <jbx6244@gmail.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
References: <20210607063448.29589-1-jon.lin@rock-chips.com>
 <20210607063448.29589-2-jon.lin@rock-chips.com>
 <ef90ae6d-40bb-8389-f4f8-536a7b610fb7@gmail.com> <3681106.bcXerOTE6V@diego>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <f815ad6c-36c5-039e-0ae8-0ab523a75caa@rock-chips.com>
Date: Wed, 9 Jun 2021 10:40:39 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <3681106.bcXerOTE6V@diego>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210608_194051_042412_BF9E30DB 
X-CRM114-Status: GOOD (  27.87  )
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

SGkgSGVpa28sIEpvaGFuLAoKT24gMjAyMS82Lzcg5LiL5Y2INTowNCwgSGVpa28gU3TDvGJuZXIg
d3JvdGU6Cj4gWW91ciBjb21tZW50IGluIFtQQVRDSCB2MyAzLzhdOgo+Pj4+IEFkZGluZyAicm9j
a2NoaXAscnYxMTI2LXNwaSIgdG8gcm9ja2NoaXBfc3BpX2R0X21hdGNoW10gaXMgc3RyaWN0bHkg
bm90Cj4+Pj4gbmVlZGVkIHdoZW4gdXNpbmcgInJvY2tjaGlwLHJrMzA2Ni1zcGkiIGFzIGZhbGwg
YmFjayBzdHJpbmcuCj4+Pj4gQ291bGQgYSBtYWludGFpbmVyIGFkdmlzZT8KPj4+Pgo+Pj4+IE1h
eWJlIHRoaXMgYnVnIG9mIG1pbmUgc2hvdWxkIHJldmVydCB0b28/PyBPciBpcyBpdCBsZWdhY3k/
Cj4+Pj4gc3BpOiByb2NrY2hpcDogYWRkIGNvbXBhdGlibGUgc3RyaW5nIGZvciBweDMwIHJrMzMw
OCByazMzMjgKPj4+PiBodHRwczovL2xvcmUua2VybmVsLm9yZy9yLzIwMjAwMzA5MTUxMDA0Ljc3
ODAtMS1qYng2MjQ0QGdtYWlsLmNvbQo+Pj4gSSBhZ3JlZSB3aXRoIHlvdS4gSWYgdGhlIG1haW50
YWluZXIgZG9lc24ndCBoYXZlIGFueSBjb21tZW50cywgSSB3aWxsIHVzZQo+Pj4gInJvY2tjaGlw
LHNwaSIgYXMgY29tcGF0aWJsZSBuYW1lcyBmb3IgdGhlIHN1YnNlcXVlbnQgcmsgcGxhdGZvcm0u
Cj4+IENvbXBhdGliaWxpdHkgc3RyaW5ncyBhcmUgc3VwcG9zZWQgdG8gYmUgU29DIG9yaWVudGF0
ZWQuCj4+IFNvIGdlbmVyaWMgb25lcyBsaWtlIGluIHRoZSBtYW51ZmFjdHVyZXIgdHJlZSBjYW4n
dCBiZSB1c2VkIGhlcmUuCj4gSm9oYW4gaXN0IHJpZ2h0IDotKSAuCj4KPiByb2NrY2hpcCxzcGkg
d29uJ3Qgd29yayBhdCBhbGwsIGVzcGVjaWFsbHkgYXMgdGhlc2UgY29udHJvbGxlcnMgYWx3YXlz
IGNoYW5nZQo+IG92ZXIgdGltZS4gWzBdCj4KPiBCZXN0IGV4YW1wbGUgaXMgdGhlIGlvbW11LiBX
ZSBzdGFydGVkIHdpdGggInJvY2tjaGlwLGlvbW11IiB0aGlua2luZyB0aGlzCj4gd29uJ3QgY2hh
bmdlIG92ZXIgdGltZSwgYnV0IHdpdGggdGhlIHJrMzU2OCB3ZSBnZXQgYSBuZXcgc2xpZ2h0bHkg
ZGlmZmVyZW50Cj4gaW9tbXUuCgoKUm9ja2NoaXAgU1BJIGFuZCBTRkMgY29udHJvbGxlciBjYW4g
dXNlIGEgZ2VuZXJpYyBjb21wYXRpYmxlIHN0cmluZywgCmJlY2F1c2UgdGhlcmUgaXMgYSB2ZXJz
aW9uCgpyZWdpc3RlciBpbnNpZGUgdGhlIElQLCBhbmQgYWxsIHRoZSBmZWF0dXJlIHVwZGF0ZSB3
aWxsIGhhdmUgYSBuZXcgSVAgCnZlcnNpb24sIHNvIHRoZSBkcml2ZXIgaXMKCnVzZWQgZm9yIHRo
ZSBTUEkvU0ZDIElQwqAgaW4gYWxsIFNvQ3MsIHdlIGRvbid0IG5lZWQgdG8gY2FyZSB3aGljaCBT
b0MgaXMgCnVzaW5nIHRoaXMgZHJpdmVyLgoKSWYgd2UgaGF2ZSB0byB1c2UgdGhlIGNvbXBhdGli
bGUgc3RyaW5nICJyb2NrY2hpcCxyazMwNjYtc3BpIiBhbmQgZWFjaCAKZm9yIGEgbmV3IHNvYywg
dGhlbiB3ZQoKaGF2ZSB0byB1cGRhdGUgdGhlIGRyaXZlciBjb21wYXRpYmxlIGlkIGxpc3QgYW5k
IGRvY3VtZW50IGZvciBlYWNoIHNvYyAKd2hpY2ggaXMgdG90YWxseSBub3QgbmVlZAoKYW5kIG5v
dCBjb3JyZWN0wqAgdG8gZG8gaXQuCgpUaGUgZXhhbXBsZSAiaW9tbXUiIGlzIGRpZmZlcmVudCwg
YmVjYXVzZSB0aGVyZSBpcyBubyB2ZXJzaW9uIHJlZ2lzdGVyIAppbnNpZGUgdGhlIElQIGFuZCB0
aGUgSVAKCmNhbiBub3QgaWRlbnRpZnkgaXRzZWxmLCB3aGljaCBuZWVkIGEgc29mdHdhcmUgZGVm
aW5lICItdlgiLgoKClRoYW5rcywKCi0gS2V2ZXIKCj4gVGhlIHZlbmRvci1rZXJuZWwgdGhlbiBp
bnRyb2R1Y2VzIHNvbWV3aGF0IHJhbmRvbSAiLXZYIiBhZGRpdGlvbnMgdG8KPiBkaXN0aW5ndWlz
aCB0aGVtLCBidXQgb2Z0ZW4gdGhleSBkbyBzZWVtIHRvIGJlIHZlcnkgc29mdHdhcmUtY2VudHJp
Yy4KPgo+IE1lYW5pbmcsIGhhcmR3YXJlLWRlc2lnbmVycyBtb3ZlZCBzdHVmZiBhcm91bmQgYW5k
IHNvZnR3YXJlLWRldmVsb3BlcnMKPiB0aGVuIGludmVudGVkIHRoZSB2ZXJzaW9uaW5nIHRvIGRp
ZmZlcmVudGlhdGUgYmV0d2VlbiB2ZXJzaW9ucy4KPgo+IFRoZSBkZXZpY2V0cmVlIGlzIHN1cHBv
c2VkIHRvIGRlc2NyaWJlIHRoZSBoYXJkd2FyZSB0aG91Z2gsIHNvIGdvaW5nIHdpdGgKPiB0aGUg
cmVsZXZhbnQgc29jLXNwZWNpZmljIGNvbXBhdGlibGUgZ2l2ZXMgdXMgdGhlIG5lY2Vzc2FyeSBo
YXJkd2FyZS1jZW50cmljCj4gZGlmZmVyZW50aWF0aW9uLgo+Cj4gQWxzbyB0aGlzIGFsbG93cyB0
byBjYXRjaCBsYXRlciBpc3N1ZXMgd2l0aCBzcGVjaWZpYyBzb2MgaW1wbGVtZW50YXRpb25zIDst
KQo+IExpa2UgNiBtb250cyBkb3duIHRoZSByb2FkIHdlIGRpc2NvdmVyIHNvbWUgc3BlY2lhbCBi
ZWhhdmlvdXIgb24gdGhlCj4gcmszNTY4IGFuZCBkZXZpY2V0cmVlIGlzIHN1cHBvc2VkIHRvIGJl
IHN0YWJsZS4KPgo+IFNvIGhhdmluZyB0aGUgcmVsZXZhbnQgY29tcGF0aWJsZXMgaW4gcGxhY2Ug
YWxsb3dzIHVzIHRvIGp1c3QgYWRkIGRyaXZlcgo+IGZpeGVzIGFuZCBoYXZlIHRob3NlIGFwcGx5
IG9uIHRoZSByazM1NjggaWYgdGhhdCBpcyBuZWVkIGF0IHNvbWUgcG9pbnQuCj4KPiBIZWlrbwo+
Cj4KPgo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
PiBMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKPiBMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo+Cj4KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
