Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 753F6EB64D9
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Jun 2023 14:19:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hajJwWPMsls++aGH56b9QOk27fOBecf+DhQ7qGmtWdc=; b=4Xv+/aE84I7Qrc
	gG2MZkMIM4rRhwQyhGEUxb2Hza4DPOdbMapVYu1/LY1Bud2XwgeDf4j/hffHn5cv9eCUxdYwltsfF
	Sz7AFu2Fm6DcDiCOXZgFrKIZajvez3EbvpA1R/PP5gh45Lss3UOtQ0oCJYxCCZFW0vRnegnZA56Px
	C1Qq2A8miLdTUKXkDU/COCNt3QOH/LWAmY6e2DOxjKLBY0dNfoGT6dUJVmn7Flt+AIBUKL4q5yOM6
	bQa6zDSnXOj899KP6mIyuuUdFVPc46gbdjiISEubZrNSd9IvFjhhwaAY+oWU+N4VuHDGLS0K2maMD
	gnmVVJLeGxRmDfccjiCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qE9Xk-00DMkQ-08;
	Tue, 27 Jun 2023 14:19:44 +0000
Received: from mail-lj1-x232.google.com ([2a00:1450:4864:20::232])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qE9Xg-00DMj8-0z;
	Tue, 27 Jun 2023 14:19:41 +0000
Received: by mail-lj1-x232.google.com with SMTP id 38308e7fff4ca-2b698937f85so48215361fa.2;
        Tue, 27 Jun 2023 07:19:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1687875576; x=1690467576;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=DfLJWM1h+r2fz/FrGrblPiH2XYx5v1TUXif5QJyXgRE=;
        b=nm+7mQKMEyoqcrirXa1lpri9J+NQjK7axqmZJUQdhWW5HbKcQWj7tKf+VdWSVe6FYE
         ZE7zXSDa+7Euw9TK706CY6nxn+reMksrcECRmkJ8TgOc1TwR8QsrJ2cLBP379XZAgtCa
         ZirljovqBqu5jfUZeKvbc2L/dd/Za1IAKgk049pvR6Qmcyfex3Jo2dFk5Hop8X6dYeph
         OSRUegDjqLcapwRG7rbHpqtxkaGZF9mt4UPy/bH+ORbECJo9YxUtCiN7mpZZF0+BSxQS
         KsQ8O3cWI4sLc484B/7ag5jpMXTJ17Lrbhg3RbQQKUknP9+Nlh1jjnUKxhkO2kAw70gz
         RJuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687875576; x=1690467576;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DfLJWM1h+r2fz/FrGrblPiH2XYx5v1TUXif5QJyXgRE=;
        b=ckEPzHAUZNYJtArJe7c71K19d+yFKK3bF8HN0c+yn1OgHMPgzyhUgg+hOvFsJRgHw2
         BIh6egm1tWy/3mm2VlGUVcbEJbeiC0bArEC1Cfh13QZ3rg1OTNymcLriBJwsE5tc0Y+U
         grSkLk4nP1DzckqmQQvh1Kfm3OyvWIpSgXYlzDFjQ93Gmxw2C5PTyv1ykhlutLWN1C1z
         mm6XeMFiwdxnvnaLVKlobK3qL1snSfd3uadLo8o/lKzDrtz4qVJCVUXjF0hE1d55I6Wz
         z9QelOxGbPmD4x4SJd/J3xZR+lDuyexE1gdsQCPHxkXx8JOtpTnWMjBj5eOgSbsiWmbW
         dnJg==
X-Gm-Message-State: AC+VfDxHaZVROyiyY6/3onDX898IrhgPsCecaq1WCT/I6RHe8URgP7FS
	s/NUdDPCCE1yhZ91RmJHTLw=
X-Google-Smtp-Source: ACHHUZ4unxU9mVyPjX85SmR3z4DLEpFOkvFzVKGizGK/iTAuIUTx25vGzfPrnowDBLMBpJVRCtPpMw==
X-Received: by 2002:a05:6512:39d3:b0:4fb:5dd5:715c with SMTP id k19-20020a05651239d300b004fb5dd5715cmr5486832lfu.4.1687875575662;
        Tue, 27 Jun 2023 07:19:35 -0700 (PDT)
Received: from mobilestation ([109.194.233.142])
        by smtp.gmail.com with ESMTPSA id f24-20020a19ae18000000b004f76388c0a6sm1520816lfc.236.2023.06.27.07.19.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jun 2023 07:19:34 -0700 (PDT)
Date: Tue, 27 Jun 2023 17:19:32 +0300
From: Serge Semin <fancer.lancer@gmail.com>
To: Rob Herring <robh@kernel.org>
Cc: Sebastian Reichel <sebastian.reichel@collabora.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, 
	linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	Jingoo Han <jingoohan1@gmail.com>, Gustavo Pimentel <gustavo.pimentel@synopsys.com>, 
	Bjorn Helgaas <bhelgaas@google.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Shawn Lin <shawn.lin@rock-chips.com>, Simon Xue <xxm@rock-chips.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, kernel@collabora.com
Subject: Re: [PATCH v1 1/4] dt-bindings: PCI: dwc: rockchip: Fix
 interrupt-names issue
Message-ID: <xfvpi67vvobt4hjnzlcghtshdfs7xakptsdj5tu4badmfbxddq@mgajg77uymeh>
References: <20230616170022.76107-1-sebastian.reichel@collabora.com>
 <20230616170022.76107-2-sebastian.reichel@collabora.com>
 <n5vgfnqicq3ndgqtcp3yjurbdn76vucj6zyjhlpjbdwoquv2la@5g5kv5gceyd7>
 <CAL_Jsq+=kBrujhLW_KNRWpj+DQJbnXrA=RS3La5ekbJtji+xiQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAL_Jsq+=kBrujhLW_KNRWpj+DQJbnXrA=RS3La5ekbJtji+xiQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230627_071940_347899_F1E95B4C 
X-CRM114-Status: GOOD (  27.58  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gVHVlLCBKdW4gMjcsIDIwMjMgYXQgMDc6NDg6MjlBTSAtMDYwMCwgUm9iIEhlcnJpbmcgd3Jv
dGU6Cj4gT24gVHVlLCBKdW4gMjcsIDIwMjMgYXQgNjoyN+KAr0FNIFNlcmdlIFNlbWluIDxmYW5j
ZXIubGFuY2VyQGdtYWlsLmNvbT4gd3JvdGU6Cj4gPgo+ID4gT24gRnJpLCBKdW4gMTYsIDIwMjMg
YXQgMDc6MDA6MTlQTSArMDIwMCwgU2ViYXN0aWFuIFJlaWNoZWwgd3JvdGU6Cj4gPiA+IFRoZSBS
SzM1NnggKGFuZCBSSzM1ODgpIGhhdmUgNSBnYW5nZWQgaW50ZXJydXB0cy4gRm9yIGV4YW1wbGUg
dGhlCj4gPiA+ICJsZWdhY3kiIGludGVycnVwdCBjb21iaW5lcyAiaW50YS9pbnRiL2ludGMvaW50
ZCIgd2l0aCBhIHJlZ2lzdGVyCj4gPiA+IHByb3ZpZGluZyB0aGUgZGV0YWlscy4KPiA+ID4KPiA+
ID4gQ3VycmVudGx5IHRoZSBiaW5kaW5nIGlzIG5vdCBzcGVjaWZ5aW5nIHRoZXNlIGludGVycnVw
dHMgcmVzdWx0aW5nCj4gPiA+IGluIGEgYnVuY2ggb2YgZXJyb3JzIGZvciBhbGwgcmszNTZ4IGJv
YXJkcyB1c2luZyBQQ0llLgo+ID4gPgo+ID4gPiBGaXggdGhpcyBieSBzcGVjaWZ5aW5nIHRoZSBp
bnRlcnJ1cHRzIGFuZCBhZGQgdGhlbSB0byB0aGUgZXhhbXBsZQo+ID4gPiB0byBwcmV2ZW50IHJl
Z3Jlc3Npb25zLgo+ID4gPgo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBTZWJhc3RpYW4gUmVpY2hlbCA8
c2ViYXN0aWFuLnJlaWNoZWxAY29sbGFib3JhLmNvbT4KPiA+ID4gLS0tCj4gPiA+ICAuLi4vYmlu
ZGluZ3MvcGNpL3JvY2tjaGlwLWR3LXBjaWUueWFtbCAgICAgICAgIHwgMTggKysrKysrKysrKysr
KysrKysrCj4gPiA+ICAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9wY2kvc25wcyxkdy1wY2llLnlh
bWwgIHwgMTUgKysrKysrKysrKysrKystCj4gPiA+ICAyIGZpbGVzIGNoYW5nZWQsIDMyIGluc2Vy
dGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPiA+ID4KPiA+ID4gZGlmZiAtLWdpdCBhL0RvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9wY2kvcm9ja2NoaXAtZHctcGNpZS55YW1sIGIvRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BjaS9yb2NrY2hpcC1kdy1wY2llLnlhbWwK
PiA+ID4gaW5kZXggMjRjODg5NDJlNTllLi45OGU0NWQyZDhkZmUgMTAwNjQ0Cj4gPiA+IC0tLSBh
L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9wY2kvcm9ja2NoaXAtZHctcGNpZS55
YW1sCj4gPiA+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9wY2kvcm9j
a2NoaXAtZHctcGNpZS55YW1sCj4gPiA+IEBAIC01Niw2ICs1NiwxNyBAQCBwcm9wZXJ0aWVzOgo+
ID4gPiAgICAgICAgLSBjb25zdDogcGNsawo+ID4gPiAgICAgICAgLSBjb25zdDogYXV4Cj4gPiA+
Cj4gPiA+ICsgIGludGVycnVwdHM6Cj4gPiA+ICsgICAgbWF4SXRlbXM6IDUKPiA+ID4gKwo+ID4g
PiArICBpbnRlcnJ1cHQtbmFtZXM6Cj4gPiA+ICsgICAgaXRlbXM6Cj4gPiA+ICsgICAgICAtIGNv
bnN0OiBzeXMKPiA+ID4gKyAgICAgIC0gY29uc3Q6IHBtYwo+ID4gPiArICAgICAgLSBjb25zdDog
bXNnCj4gPiA+ICsgICAgICAtIGNvbnN0OiBsZWdhY3kKPiA+ID4gKyAgICAgIC0gY29uc3Q6IGVy
cgo+ID4gPiArCj4gPiA+ICAgIG1zaS1tYXA6IHRydWUKPiA+ID4KPiA+ID4gICAgbnVtLWxhbmVz
OiB0cnVlCj4gPiA+IEBAIC05OCw2ICsxMDksNyBAQCB1bmV2YWx1YXRlZFByb3BlcnRpZXM6IGZh
bHNlCj4gPiA+Cj4gPiA+ICBleGFtcGxlczoKPiA+ID4gICAgLSB8Cj4gPiA+ICsgICAgI2luY2x1
ZGUgPGR0LWJpbmRpbmdzL2ludGVycnVwdC1jb250cm9sbGVyL2FybS1naWMuaD4KPiA+ID4KPiA+
ID4gICAgICBidXMgewo+ID4gPiAgICAgICAgICAjYWRkcmVzcy1jZWxscyA9IDwyPjsKPiA+ID4g
QEAgLTExNyw2ICsxMjksMTIgQEAgZXhhbXBsZXM6Cj4gPiA+ICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICJhY2xrX2RiaSIsICJwY2xrIiwKPiA+ID4gICAgICAgICAgICAgICAgICAgICAgICAg
ICAgImF1eCI7Cj4gPiA+ICAgICAgICAgICAgICBkZXZpY2VfdHlwZSA9ICJwY2kiOwo+ID4gPiAr
ICAgICAgICAgICAgaW50ZXJydXB0cyA9IDxHSUNfU1BJIDE2MCBJUlFfVFlQRV9MRVZFTF9ISUdI
PiwKPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICA8R0lDX1NQSSAxNTkgSVJRX1RZUEVf
TEVWRUxfSElHSD4sCj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgPEdJQ19TUEkgMTU4
IElSUV9UWVBFX0xFVkVMX0hJR0g+LAo+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgIDxH
SUNfU1BJIDE1NyBJUlFfVFlQRV9MRVZFTF9ISUdIPiwKPiA+ID4gKyAgICAgICAgICAgICAgICAg
ICAgICAgICA8R0lDX1NQSSAxNTYgSVJRX1RZUEVfTEVWRUxfSElHSD47Cj4gPiA+ICsgICAgICAg
ICAgICBpbnRlcnJ1cHQtbmFtZXMgPSAic3lzIiwgInBtYyIsICJtc2ciLCAibGVnYWN5IiwgImVy
ciI7Cj4gPiA+ICAgICAgICAgICAgICBsaW51eCxwY2ktZG9tYWluID0gPDI+Owo+ID4gPiAgICAg
ICAgICAgICAgbWF4LWxpbmstc3BlZWQgPSA8Mj47Cj4gPiA+ICAgICAgICAgICAgICBtc2ktbWFw
ID0gPDB4MjAwMCAmaXRzIDB4MjAwMCAweDEwMDA+Owo+ID4gPiBkaWZmIC0tZ2l0IGEvRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BjaS9zbnBzLGR3LXBjaWUueWFtbCBiL0RvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9wY2kvc25wcyxkdy1wY2llLnlhbWwKPiA+ID4g
aW5kZXggMWE4M2YwZjY1ZjE5Li45ZjYwNWViMjk3ZjUgMTAwNjQ0Cj4gPiA+IC0tLSBhL0RvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9wY2kvc25wcyxkdy1wY2llLnlhbWwKPiA+ID4g
KysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BjaS9zbnBzLGR3LXBjaWUu
eWFtbAo+ID4gPiBAQCAtMTkzLDkgKzE5MywyMiBAQCBwcm9wZXJ0aWVzOgo+ID4gPiAgICAgICAg
ICAgIG9uZU9mOgo+ID4gPiAgICAgICAgICAgICAgLSBkZXNjcmlwdGlvbjogU2VlIG5hdGl2ZSAi
YXBwIiBJUlEgZm9yIGRldGFpbHMKPiA+ID4gICAgICAgICAgICAgICAgZW51bTogWyBpbnRyIF0K
PiA+Cj4gPiBUaGUgSVJRcyBiZWxvdyBhcmUgZWl0aGVyIGNvbWJpbmVkIHZlcnNpb24gb2YgdGhl
IGFscmVhZHkgZGVmaW5lZCBJUlFzCj4gPiBvciBqdXN0IHRoZSBnZW5lcmljIERXIFBDSWUgSVJR
cyBidXQgbmFtZWQgZGlmZmVyZW50bHkuIE1vcmVvdmVyIEkKPiA+IGRvbid0IHNlZSBrZXJuZWwg
dXNpbmcgYW55IG9mIHRoZW0gZXhjZXB0IHRoZSAibGVnYWN5IiBpbnRlcnJ1cHQuIFdoYXQKPiA+
IGFib3V0IGNvbnZlcnRpbmcgdGhlIGR0cyBmaWxlcyB0byB1c2luZyB0aGUgYWxyZWFkeSBkZWZp
bmVkIG5hbWVzIGluc3RlYWQKPiA+IG9mIGV4dGVuZGluZyB0aGUgYWxyZWFkeSBvdmVyLWRpdmVy
Z2VkIERULWJpbmRpbmdzPwo+ID4gUm9iLCBLcnp5c3p0b2Y/Cj4gCgo+IElmIHRoZXJlJ3Mgbm90
IGEgZGVwZW5kZW5jeSBvbiB0aGUgbmFtZXMsIHRoZW4gd2UgY2FuIGdldCBhd2F5IHdpdGgKPiBj
aGFuZ2luZyB0aGVtLiBPdGhlcndpc2UsIGl0J3MgYW4gQUJJIGlzc3VlIHRvIGNoYW5nZSB0aGVt
LiBTdXBwb3J0aW5nCj4gYm90aCBuYW1lcyBpbiB0aGUgZHJpdmVyIHBhcnRpYWxseSBtaXRpZ2F0
ZXMgdGhhdCwgYnV0IGlzbid0IHdvcnRoCj4gY2FycnlpbmcgdGhhdCBJTU8uCgpEVyBSb2NrY2hp
cCBMTEREIG9ubHkgbG9va3MgZm9yIHRoZSAibGVnYWN5IiBJUlEgbmFtZS4gVGhlIHJlc3Qgb2YK
dGhlbSBhcmUgbGVmdCB1bnVzZWQgYnkgYm90aCBMTEREIGFuZCB0aGUgRFcgUENJZSBjb3JlIGRy
aXZlci4gU28gZnJvbQp0aGUga2VybmVsIHBvaW50IG9mIHZpZXcgQUJJIGlzIGRlZmluZWQgZm9y
ICJsZWdhY3kiIG5hbWUgb25seS4KCkV2ZW4gIm1zaSIvIm1zZyIgSVJRIG5hbWUgbGVmdCB1bnVz
ZWQgd2hpY2ggaXMgbm9ybWFsbHkgcmVzcG9uc2libGUKZm9yIHNpZ25hbGluZyBNU0kgVExQcyBj
YXVnaHQgYnkgdGhlIGlNU0ktUlggZW5naW5lLiAoTW9zdCBsaWtlbHkKTVNJIHBhY2tldHMgcGFz
c2VzIHRocm91Z2ggdGhlIFBDSTwtPlN5c3RlbSBidXMgYnJpZGdlIGFuZCBnZXRzCmRldGVjdGVk
IGJ5IHRoZSBzeXN0ZW0gR0lDLikKCi1TZXJnZSh5KQoKPiAKPiBXaWxsIGRyb3AgdGhpcyBvbmUg
ZnJvbSBteSB0cmVlLiBTZWVtcyBwYXRjaGVzIDIgYW5kIDMgYXJlbid0Cj4gZGVwZW5kZW50IG9u
IHRoaXMgb25lLgo+IAo+IFJvYgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
