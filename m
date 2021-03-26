Return-Path: <SRS0=Z0ts=IY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5198C433C1
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Mar 2021 09:41:19 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2A72261A32
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Mar 2021 09:41:19 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2A72261A32
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KljHHvyTFIWiXjuWQBhhtku5vFj+mgIXiFCH1TX7Shk=; b=VPS6ygezyRFjsF6iAX1qdAp7X
	ZQL1PJmkR/w6lflg6MS7vT9D2BuOEwxY4xwV3TeGXxRFTVXiugbXV9T/3k+TjdHKptVpV+sHR61u2
	BCoTs0Mech9FYZPPUFv0hugKP7y0n5m/h9o44GKQkQxrMDqq+RvY9KiCcJU27CwbYt4ppMvYEGOSU
	GQ6N5Tt9I7cXRoi9MaOuuNR/FJoym3YaN/WXEiQ7BM79iaaZ98wtzaNG1wgx6ggmJ+jEoNHPlxWSM
	Eqj9Ie/6QllHOq77UNyCZvjrgvKcauCUy+jCerLMScfb6s9UNP3OKA9LFGExOKbuCJxwkr5pu1ymn
	4P+7vBznQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lPixw-003BZx-3R; Fri, 26 Mar 2021 09:41:16 +0000
Received: from mail-ot1-x32b.google.com ([2607:f8b0:4864:20::32b])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lPixg-003BUq-GW; Fri, 26 Mar 2021 09:41:03 +0000
Received: by mail-ot1-x32b.google.com with SMTP id
 91-20020a9d08640000b0290237d9c40382so4624729oty.12; 
 Fri, 26 Mar 2021 02:40:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=VtlzHKzBVeNqbjFIBZ7d1B3hwS0lt1PMIHi606exDHo=;
 b=rAsR1aUp0QcXulOslOe1WtWLDN9EeG6hCmfpHUFxGKem4z6CR9z3VFmtZEvIB+NETR
 9UGyzGGmeKOjO4JumNht9ZngNUa46q5vaRUtMvGDrfBtNtg/k3XDsAXndZJL/qJHsMrB
 AlkJrHLZMwlJ6Qcy3SZflem+0VPU9sys8U42I3rt6dDpuFd6hxq5Na+FHFl4VFyxIf47
 eu8o3kYaY3Jaxsmsy3v7AvjMj98Msl7kL0zRqijbbgQ335pxNUX50HdcagK8IedDMsic
 zThdBVAJrhgw12vne2mOFdiQSuzeEbCUonhUS8HRIDtQqF9NMW+GrtmRrPXNA1P8TG8S
 HPFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=VtlzHKzBVeNqbjFIBZ7d1B3hwS0lt1PMIHi606exDHo=;
 b=G9y84QphMI1c3dCNjBstqxAyPlMyYwYRhgwlCTuRAuGouyXlMog4Ljf7ZBdJSjrC+B
 Q9GjIsPSLjdUIJz3cvpdq9BG6uz10nOQSEIrITQWPUOHZPrRDiE09fO/fvHzc86vLtb5
 BcVERQNBTxgU3mvELmF4WsfCrXob+OqqQT4p+SIU0oes36Sn1UnjCNPZ+TYbKmOdoA63
 7pbAmpFNOAXfh2m44rd0zfuEssLOk81Xq3UQjZa2mpXoH/P0Ai4KMpfxG1VEZk7HTHm8
 vKIyw0hPuIiFe8xjXityIAvnOhN6xhVfpxkwt2MQ+2CvMaLmlyb7HoQWRNSsolFYtaPu
 8Z5A==
X-Gm-Message-State: AOAM533jUAxPnGXKSBGbvptNxIZTOLR5b6dArc3YIsePxule/W2oMPS3
 SH/R2GinowmbnXoFkoGKCi4RDg0zeBobU1WLZzU=
X-Google-Smtp-Source: ABdhPJzfKOeCzNFxHmkTASVWR4jO+siUZM9pXCP7so2wGLQ9nBEETk2W1w2Z1yL3fP59vWHEcGt01AKLzYtb5QFKIVU=
X-Received: by 2002:a9d:7b4e:: with SMTP id f14mr11295028oto.281.1616751658347; 
 Fri, 26 Mar 2021 02:40:58 -0700 (PDT)
MIME-Version: 1.0
References: <20210326091547.12375-1-zhangqing@rock-chips.com>
 <20210326091547.12375-4-zhangqing@rock-chips.com>
In-Reply-To: <20210326091547.12375-4-zhangqing@rock-chips.com>
From: Enric Balletbo Serra <eballetbo@gmail.com>
Date: Fri, 26 Mar 2021 10:40:46 +0100
Message-ID: <CAFqH_503DyLAd5XUxdTiZrDbdTRFt=rjoQy5-bSH-4DiKrdd8w@mail.gmail.com>
Subject: Re: [PATCH v5 03/11] arm: dts: rockchip: Fix power-controller node
 names for rk3288
To: Elaine Zhang <zhangqing@rock-chips.com>
Cc: Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
 Linux ARM <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 linux-kernel <linux-kernel@vger.kernel.org>, cl@rock-chips.com,
 huangtao@rock-chips.com, 
 kever.yang@rock-chips.com, tony.xie@rock-chips.com, 
 finley.xiao@rock-chips.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210326_094101_552104_BAE75180 
X-CRM114-Status: GOOD (  14.85  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

TWlzc2F0Z2UgZGUgRWxhaW5lIFpoYW5nIDx6aGFuZ3FpbmdAcm9jay1jaGlwcy5jb20+IGRlbCBk
aWEgZHYuLCAyNiBkZQptYXLDpyAyMDIxIGEgbGVzIDEwOjE2Ogo+Cj4gVXNlIG1vcmUgZ2VuZXJp
YyBuYW1lcyAoYXMgcmVjb21tZW5kZWQgaW4gdGhlIGRldmljZSB0cmVlIHNwZWNpZmljYXRpb24K
PiBvciB0aGUgYmluZGluZyBkb2N1bWVudGF0aW9uKQo+Cj4gU2lnbmVkLW9mZi1ieTogRWxhaW5l
IFpoYW5nIDx6aGFuZ3FpbmdAcm9jay1jaGlwcy5jb20+CgpSZXZpZXdlZC1ieTogRW5yaWMgQmFs
bGV0Ym8gaSBTZXJyYSA8ZW5yaWMuYmFsbGV0Ym9AY29sbGFib3JhLmNvbT4KCj4gLS0tCj4gIGFy
Y2gvYXJtL2Jvb3QvZHRzL3JrMzI4OC5kdHNpIHwgOCArKysrLS0tLQo+ICAxIGZpbGUgY2hhbmdl
ZCwgNCBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2FyY2gv
YXJtL2Jvb3QvZHRzL3JrMzI4OC5kdHNpIGIvYXJjaC9hcm0vYm9vdC9kdHMvcmszMjg4LmR0c2kK
PiBpbmRleCBlYTc0MTZjMzFmOWIuLjZmNGQ3OTI5ZTM1MSAxMDA2NDQKPiAtLS0gYS9hcmNoL2Fy
bS9ib290L2R0cy9yazMyODguZHRzaQo+ICsrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL3JrMzI4OC5k
dHNpCj4gQEAgLTc2OSw3ICs3NjksNyBAQAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAqICAg
ICAgKl9IRE1JICAgICAgICAgIEhETUkKPiAgICAgICAgICAgICAgICAgICAgICAgICAgKiAgICAg
ICpfTUlQSV8qICAgICAgICBNSVBJCj4gICAgICAgICAgICAgICAgICAgICAgICAgICovCj4gLSAg
ICAgICAgICAgICAgICAgICAgICAgcGRfdmlvQFJLMzI4OF9QRF9WSU8gewo+ICsgICAgICAgICAg
ICAgICAgICAgICAgIHBvd2VyLWRvbWFpbkBSSzMyODhfUERfVklPIHsKPiAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIHJlZyA9IDxSSzMyODhfUERfVklPPjsKPiAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIGNsb2NrcyA9IDwmY3J1IEFDTEtfSUVQPiwKPiAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwmY3J1IEFDTEtfSVNQPiwKPiBAQCAtODEx
LDcgKzgxMSw3IEBACj4gICAgICAgICAgICAgICAgICAgICAgICAgICogTm90ZTogVGhlIGZvbGxv
d2luZyAzIGFyZSBIRVZDKEguMjY1KSBjbG9ja3MsCj4gICAgICAgICAgICAgICAgICAgICAgICAg
ICogYW5kIG9uIHRoZSBBQ0xLX0hFVkNfTklVIChOT0MpLgo+ICAgICAgICAgICAgICAgICAgICAg
ICAgICAqLwo+IC0gICAgICAgICAgICAgICAgICAgICAgIHBkX2hldmNAUkszMjg4X1BEX0hFVkMg
ewo+ICsgICAgICAgICAgICAgICAgICAgICAgIHBvd2VyLWRvbWFpbkBSSzMyODhfUERfSEVWQyB7
Cj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICByZWcgPSA8UkszMjg4X1BEX0hFVkM+
Owo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgY2xvY2tzID0gPCZjcnUgQUNMS19I
RVZDPiwKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwmY3J1IFND
TEtfSEVWQ19DQUJBQz4sCj4gQEAgLTgyNSw3ICs4MjUsNyBAQAo+ICAgICAgICAgICAgICAgICAg
ICAgICAgICAqICh2aWRlbyBlbmRlY29kZXIgJiBkZWNvZGVyKSBjbG9ja3MgdGhhdCBvbiB0aGUK
PiAgICAgICAgICAgICAgICAgICAgICAgICAgKiBBQ0xLX1ZDT0RFQ19OSVUgYW5kIEhDTEtfVkNP
REVDX05JVSAoTk9DKS4KPiAgICAgICAgICAgICAgICAgICAgICAgICAgKi8KPiAtICAgICAgICAg
ICAgICAgICAgICAgICBwZF92aWRlb0BSSzMyODhfUERfVklERU8gewo+ICsgICAgICAgICAgICAg
ICAgICAgICAgIHBvd2VyLWRvbWFpbkBSSzMyODhfUERfVklERU8gewo+ICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgcmVnID0gPFJLMzI4OF9QRF9WSURFTz47Cj4gICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBjbG9ja3MgPSA8JmNydSBBQ0xLX1ZDT0RFQz4sCj4gICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8JmNydSBIQ0xLX1ZDT0RFQz47Cj4g
QEAgLTgzNiw3ICs4MzYsNyBAQAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAqIE5vdGU6IEFD
TEtfR1BVIGlzIHRoZSBHUFUgY2xvY2ssCj4gICAgICAgICAgICAgICAgICAgICAgICAgICogYW5k
IG9uIHRoZSBBQ0xLX0dQVV9OSVUgKE5PQykuCj4gICAgICAgICAgICAgICAgICAgICAgICAgICov
Cj4gLSAgICAgICAgICAgICAgICAgICAgICAgcGRfZ3B1QFJLMzI4OF9QRF9HUFUgewo+ICsgICAg
ICAgICAgICAgICAgICAgICAgIHBvd2VyLWRvbWFpbkBSSzMyODhfUERfR1BVIHsKPiAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIHJlZyA9IDxSSzMyODhfUERfR1BVPjsKPiAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIGNsb2NrcyA9IDwmY3J1IEFDTEtfR1BVPjsKPiAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIHBtX3FvcyA9IDwmcW9zX2dwdV9yPiwKPiAtLQo+
IDIuMTcuMQo+Cj4KPgo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KPiBMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKPiBMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=
