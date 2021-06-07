Return-Path: <SRS0=vLt7=LB=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7DF1EC47082
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Jun 2021 09:54:43 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3F71F6008E
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Jun 2021 09:54:43 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3F71F6008E
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OMZNXVuZP+xmmtsCQYclUa3PBbyjsuYJ+0JjEKvd7IM=; b=k3ngoqyB1WW2yJfrAMstLk3At1
	ukpykiQMldLFcZoz9BQjsurueC5BdqfZRFhz1qD54Ks4iBwapO9Te0ps1fXKnk7d2iZtfn8HgZNud
	Lc05u8z7/IwXemt0YlPBBYdGdQK0Z9CcLhAfXxOKct+2kw/mv3y70y3X6F9TwNHVUZKSJKy1YxumG
	Qh4d1TLa8p00dK2OzoblKYVZFj266XbgXTy4nK7WeWOZS8/aOG60Kb4JdGEz/fw7dORlLd6VjUyh1
	2uAcc7Y70xCsLY0G+vsIFOT8mTby5Vn9vYovRbVtaOzc1tsODs+QCYWO5PCQh7folXCrcfcRrthpU
	aguXdrkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lqBxt-002jdt-M6; Mon, 07 Jun 2021 09:54:37 +0000
Received: from regular1.263xmail.com ([211.150.70.197])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lqBfY-002e0v-Ph; Mon, 07 Jun 2021 09:35:45 +0000
Received: from localhost (unknown [192.168.167.235])
 by regular1.263xmail.com (Postfix) with ESMTP id 30E301BBF;
 Mon,  7 Jun 2021 17:35:36 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [172.16.12.73] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P31751T140094889510656S1623058535154905_; 
 Mon, 07 Jun 2021 17:35:36 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <64b7a42d8996c14ab6b47535c6dccd2d>
X-RL-SENDER: jon.lin@rock-chips.com
X-SENDER: jon.lin@rock-chips.com
X-LOGIN-NAME: jon.lin@rock-chips.com
X-FST-TO: linux-arm-kernel@lists.infradead.org
X-RCPT-COUNT: 9
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
Subject: Re: [PATCH v4 1/6] dt-bindings: spi: spi-rockchip: add description
 for rv1126 and rk3568
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>, broonie@kernel.org,
 Johan Jonker <jbx6244@gmail.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
References: <20210607063448.29589-1-jon.lin@rock-chips.com>
 <20210607063448.29589-2-jon.lin@rock-chips.com>
 <ef90ae6d-40bb-8389-f4f8-536a7b610fb7@gmail.com> <3681106.bcXerOTE6V@diego>
From: Jon Lin <jon.lin@rock-chips.com>
Message-ID: <a38fc74e-809a-0823-2abe-bf6e05e1a5a3@rock-chips.com>
Date: Mon, 7 Jun 2021 17:35:40 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <3681106.bcXerOTE6V@diego>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210607_023541_252154_0D844E79 
X-CRM114-Status: GOOD (  26.58  )
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

Ck9uIDYvNy8yMSA1OjA0IFBNLCBIZWlrbyBTdMO8Ym5lciB3cm90ZToKPiBBbSBNb250YWcsIDcu
IEp1bmkgMjAyMSwgMTA6MTU6MzAgQ0VTVCBzY2hyaWViIEpvaGFuIEpvbmtlcjoKPj4gSGkgSm9u
LAo+Pgo+PiBPbiA2LzcvMjEgODozNCBBTSwgSm9uIExpbiB3cm90ZToKPj4+IFRoZSBkZXNjcmlw
dGlvbiBiZWxvdyB3aWxsIGJlIHVzZWQgZm9yIHJ2MTEyNi5kdHNpIG9yIHJrMzU2OC5kdHNpIGlu
Cj4+PiB0aGUgZnV0dXJlCj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogSm9uIExpbiA8am9uLmxpbkBy
b2NrLWNoaXBzLmNvbT4KPj4+IC0tLQo+Pj4KPj4+IENoYW5nZXMgaW4gdjQ6Cj4+PiAtIEFkanVz
dCB0aGUgb3JkZXIgcGF0Y2hlcwo+Pj4gLSBTaW1wbHkgY29tbWl0IG1hc3NhZ2UgbGlrZSByZWR1
bmRhbmN5ICJhcHBsaWNhdGlvbiIgY29udGVudAo+Pj4KPj4+IENoYW5nZXMgaW4gdjM6Cj4+PiAt
IEZpeCBjb21waWxlIGVycm9yIHdoaWNoIGlzIGZpbmQgYnkgU2FzY2hhIGluIFt2MiwyLzhdCj4+
Pgo+Pj4gICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvc3BpL3NwaS1yb2NrY2hp
cC55YW1sIHwgMiArKwo+Pj4gICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspCj4+Pgo+
Pj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9zcGkvc3Bp
LXJvY2tjaGlwLnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvc3BpL3Nw
aS1yb2NrY2hpcC55YW1sCj4+PiBpbmRleCAxZTZjZjI5ZTYzODguLjJkNzk1N2Y5YWUwYSAxMDA2
NDQKPj4+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9zcGkvc3BpLXJv
Y2tjaGlwLnlhbWwKPj4+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9z
cGkvc3BpLXJvY2tjaGlwLnlhbWwKPj4+IEBAIC0yNywxMiArMjcsMTQgQEAgcHJvcGVydGllczoK
Pj4+ICAgICAgICAgLSBpdGVtczoKPj4+ICAgICAgICAgICAgIC0gZW51bToKPj4+ICAgICAgICAg
ICAgICAgICAtIHJvY2tjaGlwLHB4MzAtc3BpCj4+PiArICAgICAgICAgICAgICAtIHJvY2tjaGlw
LHJ2MTEyNi1zcGkKPj4gVGhpcyBsaXN0IGlzIHNvcnQgYWxwaGFiZXRpY2FsbHkuCj4+IE1vdmUg
InJvY2tjaGlwLHJ2MTEyNi1zcGkiIGJlbG93ICJyb2NrY2hpcCxyazM1Njgtc3BpIgo+Pgo+Pj4g
ICAgICAgICAgICAgICAgIC0gcm9ja2NoaXAscmszMTg4LXNwaQo+Pj4gICAgICAgICAgICAgICAg
IC0gcm9ja2NoaXAscmszMjg4LXNwaQo+Pj4gICAgICAgICAgICAgICAgIC0gcm9ja2NoaXAscmsz
MzA4LXNwaQo+Pj4gICAgICAgICAgICAgICAgIC0gcm9ja2NoaXAscmszMzI4LXNwaQo+Pj4gICAg
ICAgICAgICAgICAgIC0gcm9ja2NoaXAscmszMzY4LXNwaQo+Pj4gICAgICAgICAgICAgICAgIC0g
cm9ja2NoaXAscmszMzk5LXNwaQo+Pj4gKyAgICAgICAgICAgICAgLSByb2NrY2hpcCxyazM1Njgt
c3BpCj4+Cj4+PiAgICAgICAgICAgICAtIGNvbnN0OiByb2NrY2hpcCxyazMwNjYtc3BpCj4+PiAg
IAo+Pj4gICAgIHJlZzoKPj4+Cj4+ID09PQo+Pgo+PiBZb3VyIGNvbW1lbnQgaW4gW1BBVENIIHYz
IDMvOF06Cj4+Pj4gQWRkaW5nICJyb2NrY2hpcCxydjExMjYtc3BpIiB0byByb2NrY2hpcF9zcGlf
ZHRfbWF0Y2hbXSBpcyBzdHJpY3RseSBub3QKPj4+PiBuZWVkZWQgd2hlbiB1c2luZyAicm9ja2No
aXAscmszMDY2LXNwaSIgYXMgZmFsbCBiYWNrIHN0cmluZy4KPj4+PiBDb3VsZCBhIG1haW50YWlu
ZXIgYWR2aXNlPwpXaXRoIGNvbnN1bHRpbmcgdG8gbXkgY29sbGVhZ3Vl77yMd2UgcGxhbmUgdG86
CjEuSWYgbmV3IHNvYydzIHNwaSBpcCBpcyBjb21wYXRpYmxlIHdpdGggdGhlIGZhbGwgYmFjayBv
bmUsIHdlIHdvbnQgYWRkIApuZXcgY29tcGF0aWJsZSBpZCB0byB0aGUgY29kZS4KMi5JIHdpbGwg
YWRkIG5ldyBmYWxsIGJhY2sgc3RyaW5nIHN0YW5kIGZvciBuZXcgZ2VuZXJhdGlvbiBpcDogCnJv
Y2tjaGlwLHJ2MTEyNi1zcGkKPj4+Pgo+Pj4+IE1heWJlIHRoaXMgYnVnIG9mIG1pbmUgc2hvdWxk
IHJldmVydCB0b28/PyBPciBpcyBpdCBsZWdhY3k/Cj4+Pj4gc3BpOiByb2NrY2hpcDogYWRkIGNv
bXBhdGlibGUgc3RyaW5nIGZvciBweDMwIHJrMzMwOCByazMzMjgKPj4+PiBodHRwczovL2xvcmUu
a2VybmVsLm9yZy9yLzIwMjAwMzA5MTUxMDA0Ljc3ODAtMS1qYng2MjQ0QGdtYWlsLmNvbQo+Pj4g
SSBhZ3JlZSB3aXRoIHlvdS4gSWYgdGhlIG1haW50YWluZXIgZG9lc24ndCBoYXZlIGFueSBjb21t
ZW50cywgSSB3aWxsIHVzZQo+Pj4gInJvY2tjaGlwLHNwaSIgYXMgY29tcGF0aWJsZSBuYW1lcyBm
b3IgdGhlIHN1YnNlcXVlbnQgcmsgcGxhdGZvcm0uCj4+IENvbXBhdGliaWxpdHkgc3RyaW5ncyBh
cmUgc3VwcG9zZWQgdG8gYmUgU29DIG9yaWVudGF0ZWQuCj4+IFNvIGdlbmVyaWMgb25lcyBsaWtl
IGluIHRoZSBtYW51ZmFjdHVyZXIgdHJlZSBjYW4ndCBiZSB1c2VkIGhlcmUuCj4gSm9oYW4gaXN0
IHJpZ2h0IDotKSAuCj4KPiByb2NrY2hpcCxzcGkgd29uJ3Qgd29yayBhdCBhbGwsIGVzcGVjaWFs
bHkgYXMgdGhlc2UgY29udHJvbGxlcnMgYWx3YXlzIGNoYW5nZQo+IG92ZXIgdGltZS4gWzBdCj4K
PiBCZXN0IGV4YW1wbGUgaXMgdGhlIGlvbW11LiBXZSBzdGFydGVkIHdpdGggInJvY2tjaGlwLGlv
bW11IiB0aGlua2luZyB0aGlzCj4gd29uJ3QgY2hhbmdlIG92ZXIgdGltZSwgYnV0IHdpdGggdGhl
IHJrMzU2OCB3ZSBnZXQgYSBuZXcgc2xpZ2h0bHkgZGlmZmVyZW50Cj4gaW9tbXUuCj4KPiBUaGUg
dmVuZG9yLWtlcm5lbCB0aGVuIGludHJvZHVjZXMgc29tZXdoYXQgcmFuZG9tICItdlgiIGFkZGl0
aW9ucyB0bwo+IGRpc3Rpbmd1aXNoIHRoZW0sIGJ1dCBvZnRlbiB0aGV5IGRvIHNlZW0gdG8gYmUg
dmVyeSBzb2Z0d2FyZS1jZW50cmljLgo+Cj4gTWVhbmluZywgaGFyZHdhcmUtZGVzaWduZXJzIG1v
dmVkIHN0dWZmIGFyb3VuZCBhbmQgc29mdHdhcmUtZGV2ZWxvcGVycwo+IHRoZW4gaW52ZW50ZWQg
dGhlIHZlcnNpb25pbmcgdG8gZGlmZmVyZW50aWF0ZSBiZXR3ZWVuIHZlcnNpb25zLgo+Cj4gVGhl
IGRldmljZXRyZWUgaXMgc3VwcG9zZWQgdG8gZGVzY3JpYmUgdGhlIGhhcmR3YXJlIHRob3VnaCwg
c28gZ29pbmcgd2l0aAo+IHRoZSByZWxldmFudCBzb2Mtc3BlY2lmaWMgY29tcGF0aWJsZSBnaXZl
cyB1cyB0aGUgbmVjZXNzYXJ5IGhhcmR3YXJlLWNlbnRyaWMKPiBkaWZmZXJlbnRpYXRpb24uCj4K
PiBBbHNvIHRoaXMgYWxsb3dzIHRvIGNhdGNoIGxhdGVyIGlzc3VlcyB3aXRoIHNwZWNpZmljIHNv
YyBpbXBsZW1lbnRhdGlvbnMgOy0pCj4gTGlrZSA2IG1vbnRzIGRvd24gdGhlIHJvYWQgd2UgZGlz
Y292ZXIgc29tZSBzcGVjaWFsIGJlaGF2aW91ciBvbiB0aGUKPiByazM1NjggYW5kIGRldmljZXRy
ZWUgaXMgc3VwcG9zZWQgdG8gYmUgc3RhYmxlLgo+Cj4gU28gaGF2aW5nIHRoZSByZWxldmFudCBj
b21wYXRpYmxlcyBpbiBwbGFjZSBhbGxvd3MgdXMgdG8ganVzdCBhZGQgZHJpdmVyCj4gZml4ZXMg
YW5kIGhhdmUgdGhvc2UgYXBwbHkgb24gdGhlIHJrMzU2OCBpZiB0aGF0IGlzIG5lZWQgYXQgc29t
ZSBwb2ludC4KPgo+IEhlaWtvCj4KQWZ0ZXIgdGhlIGV4cGxhaW4gZnJvbSB5b3UgYW5kIEpvaGFu
LCBJIGZvdW5kIHRoYXQgdGhlIGlkZWEgCiJyb2NrY2hpcCxzcGkiIHdhcyBpbW1hdHVyZS4KPgo+
Cj4KPgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==
