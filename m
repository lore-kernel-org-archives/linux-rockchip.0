Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 55D51C47258
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Jan 2024 09:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:From:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o6IhrVo0t68D8iGVEb0ds44Q1nHW1xDHDLaHf/hCIqo=; b=pRrja0Q7SC7xeY
	4hDc3WPNFQX/buFPYENuVKBSAxo7ThmN/bHjUyTlSdcUrqhUakRfIFeYuRvf7zCVH/GQEBDraIUoE
	nYvIOr/3/4BNB/E9MIVKkB3dIHKkehwOwgOFyVvTy2Bz942L4qUISiHoOm8iXPPAiA9dD8/6lo/Vk
	bUk6boJvzNDryhcqd3ZHfCuX4+pPTi2sdKcfcFJutW/2c+gB6cL6xOrEKTkNwpbgaEqgZ4eGeoJLv
	rYujJM7Rz8KLxrjY/Jq+jC/zfQqwqQmnJqhpiNAvjGaO+IR5NwJBovVuN33k+vM/qzL7lNx5S3RtW
	vRNaZ+YD6VNsgkVf8SFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQ27f-00F4AM-1Q;
	Wed, 17 Jan 2024 09:22:11 +0000
Received: from out5-smtp.messagingengine.com ([66.111.4.29])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQ27c-00F49H-07;
	Wed, 17 Jan 2024 09:22:09 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.nyi.internal (Postfix) with ESMTP id 69B5F5C0109;
	Wed, 17 Jan 2024 04:22:07 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute3.internal (MEProxy); Wed, 17 Jan 2024 04:22:07 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=feathertop.org;
	 h=cc:cc:content-transfer-encoding:content-type:content-type
	:date:date:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:subject:subject:to:to; s=fm2;
	 t=1705483327; x=1705569727; bh=34kRshMtwfRWCMvFwLf5ruJ2ndgyWSRN
	sCfd2ePL1mo=; b=JNsKkO6/xD1mYY+UihaiB05QQvmj0GSJ3OKmFZj8HHCrwhgZ
	eshr/Ha/DCtIuLoTBXVOEznRYE4xwcOnI+IUzdrACkakZMesJubMPP+IVzfhKF02
	clOEQ02Be5HKpFGUboI6hl8f0iX8k96MyP178+BDwq106dtE9DM3vFfiMObJ41d8
	dJy4CcZq4RbMRUKDhlYveNS68Y9Y/9zr7NlUO90jv1fWsBvPVF6qMrH5+dXufrJe
	v8hQYqr8VOF89R4PaqPdmLcuOt0GNHJcnVHvHs2SfB+lOIIrxJcyv9IRJJtJgtay
	ldIGPGJ3BxVEueDLIuUhvC2Ow8bvWV6NE6tjqg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1705483327; x=
	1705569727; bh=34kRshMtwfRWCMvFwLf5ruJ2ndgyWSRNsCfd2ePL1mo=; b=g
	Mpuu517COxDBA8ACicdUB7mt3oDFK5U5kLHtMVqtwC+ujMo5k4xi0hE4YPek/7lG
	zcWRVb/x+rH8pN3T4MOWp0vJZIZJABJ5KR+jhofiEb2654LHIjdj2jRYr7feClLg
	4NLfPUupBE3NeoFlUd1oHFml+MB6Wh/+EvxhFeBeur3ZeEvfS4YiG348pv6WL7GP
	9psEae6Gvwi7NsUTOrpVWld2cAJ+7qJJSHayYHpbclW7u4k4pjC2WNcYdCHZRpdq
	USRqCvL5CDqx7eHpfMdSp9haDnnn/xF+FKCd5a1EqJRLzWU8H9lWeFFXbKcsUKXT
	msyx/jGhvusPa7BpMeplg==
X-ME-Sender: <xms:P5ynZbdoRIMSiCSDzAxC2MOY_kOt5D0XEMx4j6pm71JIbBen_WLYKw>
    <xme:P5ynZRMc39yyDdbYAEABTFXguthkcngaelco_PymNsAzwSzY1LwadUkh3ffBfObtg
    jnWp-yyFQ>
X-ME-Received: <xmr:P5ynZUheHNHrLt4-LXqq4w6MqfI-T7H7iCqtHU0fVfqkOSd4cg65_2ju5qnENekv7kKtyfVj7Z54A2_oSA17sflG9CfD9g8t7-5kYA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrvdejhedgtdduucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepkfffgggfhffuvfevfhgjtgfgsehtkeertddtvdejnecuhfhrohhmpefvihhm
    ucfnuhhnnhcuoehtihhmsehfvggrthhhvghrthhophdrohhrgheqnecuggftrfgrthhtvg
    hrnhepffeludetffejgfevjeduffejveevueekieegudfhueduieduteekteefvedvheff
    necuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepthhimh
    esfhgvrghthhgvrhhtohhprdhorhhg
X-ME-Proxy: <xmx:P5ynZc9ADCUOo0fm5dafTWzpHw9aasKcC3JuataLpWdPZQThrAB0CQ>
    <xmx:P5ynZXtWiUWSFHyyhUEuYsSFAUqKg1JZBDEnkkOndVrL1lu5I_huuw>
    <xmx:P5ynZbHwduMQM4uKF5y3K6DqiijEKpMv_h2G0DRZPMZuDGFHbI_gkA>
    <xmx:P5ynZYl9rpqcfMbdgJaSpl1RWKqUwGXo8IwvVUSML8mL9QC90mxgRQ>
Feedback-ID: i1f8241ce:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 17 Jan 2024 04:22:02 -0500 (EST)
Message-ID: <f441aebd-dd4d-47a7-a269-e4869f5eb88d@feathertop.org>
Date: Wed, 17 Jan 2024 20:22:00 +1100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Tim Lunn <tim@feathertop.org>
Subject: Re: [PATCH v2 1/3] dt-bindings: rockchip: Document rk809 support for
 rk817 audio codec
To: Conor Dooley <conor@kernel.org>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Chris Zhong <zyw@rock-chips.com>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Lee Jones <lee@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Zhang Qing <zhangqing@rock-chips.com>, linux-kernel@vger.kernel.org
References: <20240116132102.3272682-1-tim@feathertop.org>
 <20240116132102.3272682-2-tim@feathertop.org>
 <20240116-mangle-parish-93b5cd672d17@spud>
Content-Language: en-US
In-Reply-To: <20240116-mangle-parish-93b5cd672d17@spud>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240117_012208_140671_1BB8076B 
X-CRM114-Status: GOOD (  19.54  )
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

Ck9uIDEvMTcvMjQgMDQ6MDYsIENvbm9yIERvb2xleSB3cm90ZToKPiBPbiBXZWQsIEphbiAxNywg
MjAyNCBhdCAxMjoyMTowMEFNICsxMTAwLCBUaW0gTHVubiB3cm90ZToKPj4gUm9ja2NoaXAgUks4
MDkgc2hhcmVzIHRoZSBzYW1lIGF1ZGlvIGNvZGVjIGFzIHRoZSByazgxNyBtZmQsIGl0IGlzIGFs
c28KPj4gdXNpbmcgdGhlIHNhbWUgcms4MTdfY29kZWMgZHJpdmVyLiBIb3dldmVyIGl0IGlzIG1p
c3NpbmcgZnJvbSB0aGUKPj4gYmluZGluZ3MuCj4+Cj4+IFVwZGF0ZSBkdC1iaW5kaW5nIGRvY3Vt
ZW50YXRpb24gZm9yIHJrODA5IHRvIGluY2x1ZGUgdGhlIGF1ZGlvIGNvZGVjCj4+IHByb3BlcnRp
ZXMuIFRoaXMgZml4ZXMgdGhlIGZvbGxvd2luZyB3YXJuaW5nIGZyb20gZHRiIGNoZWNrOgo+Pgo+
PiBwbWljQDIwOiAnI3NvdW5kLWRhaS1jZWxscycsICdhc3NpZ25lZC1jbG9jay1wYXJlbnRzJywg
J2Fzc2lnbmVkLWNsb2NrcycsCj4+ICAgICAnY2xvY2stbmFtZXMnLCAnY2xvY2tzJywgJ2NvZGVj
JyBkbyBub3QgbWF0Y2ggYW55IG9mIHRoZSByZWdleGVzOgo+PiAgICAgJ3BpbmN0cmwtWzAtOV0r
Jwo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBUaW0gTHVubjx0aW1AZmVhdGhlcnRvcC5vcmc+Cj4+IC0t
LQo+Pgo+PiAobm8gY2hhbmdlcyBzaW5jZSB2MSkKPj4KPj4gICAuLi4vYmluZGluZ3MvbWZkL3Jv
Y2tjaGlwLHJrODA5LnlhbWwgICAgICAgICAgfCAzMCArKysrKysrKysrKysrKysrKystCj4+ICAg
MSBmaWxlIGNoYW5nZWQsIDI5IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPj4KPj4gZGlm
ZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZmQvcm9ja2NoaXAs
cms4MDkueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZmQvcm9ja2No
aXAscms4MDkueWFtbAo+PiBpbmRleCA4MzljMDUyMWYxZTUuLmJhYzJlNzUxZTJmMiAxMDA2NDQK
Pj4gLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21mZC9yb2NrY2hpcCxy
azgwOS55YW1sCj4+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZmQv
cm9ja2NoaXAscms4MDkueWFtbAo+PiBAQCAtMTIsNyArMTIsNyBAQCBtYWludGFpbmVyczoKPj4g
ICAKPj4gICBkZXNjcmlwdGlvbjogfAo+PiAgICAgUm9ja2NoaXAgUks4MDkgc2VyaWVzIFBNSUMu
IFRoaXMgZGV2aWNlIGNvbnNpc3RzIG9mIGFuIGkyYyBjb250cm9sbGVkIE1GRAo+PiAtICB0aGF0
IGluY2x1ZGVzIHJlZ3VsYXRvcnMsIGFuIFJUQywgYW5kIHBvd2VyIGJ1dHRvbi4KPj4gKyAgdGhh
dCBpbmNsdWRlcyByZWd1bGF0b3JzLCBhbiBSVEMsIGEgcG93ZXIgYnV0dG9uLCBhbmQgYW4gYXVk
aW8gY29kZWMuCj4+ICAgCj4+ICAgcHJvcGVydGllczoKPj4gICAgIGNvbXBhdGlibGU6Cj4+IEBA
IC05Myw2ICs5MywzNCBAQCBwcm9wZXJ0aWVzOgo+PiAgICAgICAgICAgdW5ldmFsdWF0ZWRQcm9w
ZXJ0aWVzOiBmYWxzZQo+PiAgICAgICB1bmV2YWx1YXRlZFByb3BlcnRpZXM6IGZhbHNlCj4+ICAg
Cj4+ICsgIGNsb2NrczoKPj4gKyAgICBkZXNjcmlwdGlvbjoKPj4gKyAgICAgIFRoZSBpbnB1dCBj
bG9jayBmb3IgdGhlIGF1ZGlvIGNvZGVjLgo+PiArCj4+ICsgIGNsb2NrLW5hbWVzOgo+PiArICAg
IGRlc2NyaXB0aW9uOgo+PiArICAgICAgVGhlIGNsb2NrIG5hbWUgZm9yIHRoZSBjb2RlYyBjbG9j
ay4KPj4gKyAgICBpdGVtczoKPj4gKyAgICAgIC0gY29uc3Q6IG1jbGsKPiBZb3UgaGF2ZSBvbmUg
Y2xvY2sgb25seSwgd2h5IGRvIHlvdSBuZWVkIHRvIGhhdmUgY2xvY2stbmFtZXM/ClRoaXMgaXMg
anVzdCBkb2N1bWVudGluZyB0aGUgZXhpc3Rpbmcgcms4MTcgY29kZWMgZHJpdmVyLCB3aGljaCBp
cyB1c2luZyAKdGhlIG5hbWUgdG8gZ2V0IHRoZSBjbG9jazoKCmRldm1fY2xrX2dldChwZGV2LT5k
ZXYucGFyZW50LCAibWNsayIpOwoKVGh1cyBpIGRvbnQgdGhpbmsgY2xvY2stbmFtZXMgY2FuwqAg
YmUgcmVtb3ZlZCBpbiB0aGlzIGNhc2U/IGF0bGVhc3Qgbm90IAp3aXRob3V0IHBhdGNoaW5nIHRo
ZSBkcml2ZXIgYXMgd2VsbD8KPiBPdGhlcndpc2UsCj4gQWNrZWQtYnk6IENvbm9yIERvb2xleTxj
b25vci5kb29sZXlAbWljcm9jaGlwLmNvbT4KPgo+IENoZWVycywKPiBDb25vci4KPgo+PiArCj4+
ICsgICcjc291bmQtZGFpLWNlbGxzJzoKPj4gKyAgICBkZXNjcmlwdGlvbjoKPj4gKyAgICAgIE5l
ZWRlZCBmb3IgdGhlIGludGVycHJldGF0aW9uIG9mIHNvdW5kIGRhaXMuCj4+ICsgICAgY29uc3Q6
IDAKPj4gKwo+PiArICBjb2RlYzoKPj4gKyAgICBkZXNjcmlwdGlvbjogfAo+PiArICAgICAgVGhl
IGNoaWxkIG5vZGUgZm9yIHRoZSBjb2RlYyB0byBob2xkIGFkZGl0aW9uYWwgcHJvcGVydGllcy4g
SWYgbm8KPj4gKyAgICAgIGFkZGl0aW9uYWwgcHJvcGVydGllcyBhcmUgcmVxdWlyZWQgZm9yIHRo
ZSBjb2RlYywgdGhpcyBub2RlIGNhbiBiZQo+PiArICAgICAgb21pdHRlZC4KPj4gKyAgICB0eXBl
OiBvYmplY3QKPj4gKyAgICBhZGRpdGlvbmFsUHJvcGVydGllczogZmFsc2UKPj4gKyAgICBwcm9w
ZXJ0aWVzOgo+PiArICAgICAgcm9ja2NoaXAsbWljLWluLWRpZmZlcmVudGlhbDoKPj4gKyAgICAg
ICAgdHlwZTogYm9vbGVhbgo+PiArICAgICAgICBkZXNjcmlwdGlvbjoKPj4gKyAgICAgICAgICBE
ZXNjcmliZXMgaWYgdGhlIG1pY3JvcGhvbmUgdXNlcyBkaWZmZXJlbnRpYWwgbW9kZS4KPj4gKwo+
PiAgIGFsbE9mOgo+PiAgICAgLSBpZjoKPj4gICAgICAgICBwcm9wZXJ0aWVzOgo+PiAtLSAKPj4g
Mi40MC4xCj4+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJvY2tjaGlwCg==
