Return-Path: <SRS0=NEY9=IW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 27FCCC433DB
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Mar 2021 02:49:39 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 471C0619D5
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Mar 2021 02:49:38 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 471C0619D5
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=E7pAFYSHnb0DRfp0kQRWjVBDQi974dyE/wHeMjU6tZU=; b=S+2ytS00ujxqPqhADYUndSlvO
	xO0RieW2IpA5QeQtDshy5OQtcasgleJKShYLa9Z3QppECN9c8/rZZ7LXnjBZ/7woW5OtbU92ejwbb
	OMlsB8wL/qrHKAWJDdGYBLWJJWnyAn86G1yZ6Cjz8vnGCojMKBchNXtlB2yxmpx9zhaaSuqKVroHD
	PakMQqbi1opYZ6Fa+AxWqj1+LXJtqIzhKYaSwQgoOr+mH9/pyqt1Oxu7aJL4dwBCWyaJiR2qdktuh
	+UZFCgENL8TFkhatbfGSnyW+iP4LnbLsjiEH//RdnjyzK2oNkM3xhNnF/mCSXVdB1sKj3GkTwPk9q
	rER1CYs5Q==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lOtaO-00GAPW-FN; Wed, 24 Mar 2021 02:49:32 +0000
Received: from regular1.263xmail.com ([211.150.70.195])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lOtZy-00GANp-5l; Wed, 24 Mar 2021 02:49:13 +0000
Received: from localhost (unknown [192.168.167.16])
 by regular1.263xmail.com (Postfix) with ESMTP id 335B91D1D;
 Wed, 24 Mar 2021 10:49:00 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [172.16.12.236] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P13111T139928526636800S1616554138557516_; 
 Wed, 24 Mar 2021 10:48:59 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <04df23d237b6fbd553a9c872d6560c96>
X-RL-SENDER: zhangqing@rock-chips.com
X-SENDER: zhangqing@rock-chips.com
X-LOGIN-NAME: zhangqing@rock-chips.com
X-FST-TO: finley.xiao@rock-chips.com
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
Subject: Re: [PATCH v2 2/3] dt-bindings: Convert the rockchip power_domain to
 YAML and extend
To: Enric Balletbo Serra <eballetbo@gmail.com>,
 Johan Jonker <jbx6244@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>, =?UTF-8?Q?Heiko_St=c3=bcbner?=
 <heiko@sntech.de>, devicetree <devicetree@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, cl@rock-chips.com,
 huangtao@rock-chips.com, kever.yang@rock-chips.com, tony.xie@rock-chips.com,
 finley.xiao@rock-chips.com
References: <20210323082410.22818-1-zhangqing@rock-chips.com>
 <20210323082410.22818-3-zhangqing@rock-chips.com>
 <87e50d5b-604b-508c-f3cb-ee07fcf15241@gmail.com>
 <CAFqH_53kBf++SPfir_5mA9Dv2v=u4s1zpqnztAH8Tt2-9dLVnQ@mail.gmail.com>
From: "elaine.zhang" <zhangqing@rock-chips.com>
Organization: rockchip
Message-ID: <6e906aee-646f-ff7e-deca-fe9bbd435cd8@rock-chips.com>
Date: Wed, 24 Mar 2021 10:48:58 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CAFqH_53kBf++SPfir_5mA9Dv2v=u4s1zpqnztAH8Tt2-9dLVnQ@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210324_024909_770648_4362104B 
X-CRM114-Status: GOOD (  12.65  )
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

SGksIEVucmljCgrlnKggMjAyMS8zLzI0IOS4iuWNiDQ6NTgsIEVucmljIEJhbGxldGJvIFNlcnJh
IOWGmemBkzoKPiBIaSBFbGFpbmUsCj4KPiBNaXNzYXRnZSBkZSBKb2hhbiBKb25rZXIgPGpieDYy
NDRAZ21haWwuY29tPiBkZWwgZGlhIGR0LiwgMjMgZGUgbWFyw6cKPiAyMDIxIGEgbGVzIDEyOjA2
Ogo+PiBIaSBFbGFpbmUsCj4+Cj4+IFNvbWUgY29tbWVudHMuIEhhdmUgYSBsb29rIGlmIGl0J3Mg
dXNlZnVsIG9yIHRoYXQgeW91IGRpc2FncmVlCj4+IHdpdGguLi4ocGFydCAxKQo+Pgo+PiA9PT09
PT0KPj4gVGhlcmUgaXMgY3VycmVudGx5IGFscmVhZHkgYSBwYXRjaCBwcm9wb3NhbCB0aGF0IGRv
ZXMgdGhlIHNhbWUuCj4+IENvdWxkIHlvdSByZWFkIHRoYXQgcmV2aWV3IGhpc3RvcnkgYW5kIHBv
cnQgdGhlIGdvb2QgdGhpbmdzIHRvIHlvdXIgb3duCj4+IHBhdGNoIHNlcmllPwo+Pgo+PiBSZTog
W1BBVENIXSBkdC1iaW5kaW5nczogcG93ZXI6IHJvY2tjaGlwOiBDb252ZXJ0IHRvIGpzb24tc2No
ZW1hCj4+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LXJvY2tjaGlwLzIwMjAxMDA3MTUx
MTU5LkdBMjIxNzU0QGJvZ3VzLwo+Pgo+PiBSZTogW1BBVENIIHYzXSBkdC1iaW5kaW5nczogcG93
ZXI6IHJvY2tjaGlwOiBDb252ZXJ0IHRvIGpzb24tc2NoZW1hCj4+IGh0dHBzOi8vbG9yZS5rZXJu
ZWwub3JnL2xpbnV4LXJvY2tjaGlwLzIwMjAxMDA3MTUxMTU5LkdBMjIxNzU0QGJvZ3VzLwo+Pgo+
IEluIGZhY3QsIHRoZSBsYXRlc3QgdmVyc2lvbiBpcyB2NiB3aGljaCBjYW4gYmUgZm91bmQgaGVy
ZToKPgo+IGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcHJvamVjdC9saW51eC1yb2NrY2hp
cC9wYXRjaC8yMDIxMDIyNTEwMjY0My42NTMwOTUtMS1lbnJpYy5iYWxsZXRib0Bjb2xsYWJvcmEu
Y29tLwo+Cj4gRmVlbCBmcmVlIHRvIGludGVncmF0ZSBhbmQvb3IgaW1wcm92ZSB0aGF0IHZlcnNp
b24gaW4geW91ciBzZXJpZXMuClRoYW5rIHlvdSBmb3IgeW91ciBzdWJtaXNzaW9uLiBJIHdpbGwg
cmV2aXNlIHRoZSBzdWJtaXNzaW9uIG9uIHRoaXMgYmFzaXMuCj4KPgo+CgoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
