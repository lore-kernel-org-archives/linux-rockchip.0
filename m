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
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E03C433DB
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Mar 2021 09:40:54 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2E00861A32
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Mar 2021 09:40:54 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2E00861A32
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sf25owxLWthLB4gqYn3BRDZuTF8GlzeV9zxY6ssKhuk=; b=mBJzpPMIOg1QHYm/ePIdmFTwW
	P5wG+b596wvJqH3CyLgtUq9JuUcZamYXvmWypkNZ2VOwPaPDxnViWLHIwtLU9nKdFUKyPggSlixRD
	PmwaWo31dOUR7L7eJ2ZeFrYDPkW1ofIQc8xlM+EWDmpgmRZgRxVCU6rywGIlbc0IIXlJpBeyOVcjo
	mrgtiMaYqVMwSQikYicyqbHCwpaM4CF37NAn+Ri+WjXhca1ukpdu8YL1sFANOQWbskm05GZAr/bBe
	wmeP9lgmHLOWFXpKrG8LxpX41L37KURn8ZnNGafE0Tukzz8Wi+QtoE22vLZDQQigDmPrycDE8gIdB
	cBHbON4qA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lPixW-003BSC-SX; Fri, 26 Mar 2021 09:40:50 +0000
Received: from mail-oi1-x232.google.com ([2607:f8b0:4864:20::232])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lPixK-003BOf-Bj; Fri, 26 Mar 2021 09:40:40 +0000
Received: by mail-oi1-x232.google.com with SMTP id x2so5152792oiv.2;
 Fri, 26 Mar 2021 02:40:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=rPre9dNxcksDQbNCzjU2B0PCEu+q3AiLBITa17+tz4Y=;
 b=pq9zwZvm36HOnSVA5UTkcR8dw/bs4bKRkZQXUr9J3Nwx475aPkYg8zXodcrlMY0g2B
 DNC5w9BVYoQMY4JtH0dOYmPZJWJBvjmTaTAsj5awsK6YPMSeqwx1UKXiVeOy8OcZ1HZj
 McbibnnImDKJv3pa0rtBYv6cRYV1aCkZEOXyqJSImYd3h939joZFSBAWktDbIizH8umV
 YNLatx7U1QIZb93hqPXoScvQ/45rYGochrMdyIOw0X3erqMh0tNpPU/aEVSJ2g+fkd0t
 ZbmF0Ija9VLDxneW9mhfe1hzPEAjkIqNvZr9XkdT5CZQQdQJ1O/fperKDxtWr1shrQO4
 14QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=rPre9dNxcksDQbNCzjU2B0PCEu+q3AiLBITa17+tz4Y=;
 b=KdFlShIKwlEMGjT4ILckZ4aqPzXxk9e4h4MfFRb528U+ibJS2aBZbZ67WLUEi8Vikr
 VJrnPOGEnqx/rcBzp2B2wBQiSmHRYbV45XidcNMhOlNAbwdvHG/bNbZycJTBnofS0BQO
 Q/gm17Asdovw7TnqlYSiV5WtanO1//QPtsEZlH/0D8pSYs+yCnLfA27wWDrjCQjQOKBt
 umVpuy59tApcdbMGv53FyYYe5kigT5MMUql7j48Zn52Ut6DED9DMVpqY+Icigg6T+Ixy
 Xnd4N/yzfLlo8O9DC0/l1VqLmlconMeO0kOUgCSerb5sotM8WftwPhiQiyyZgMkPXgYw
 N/Pw==
X-Gm-Message-State: AOAM533trnrt3N2KU820E4kg6LBUabmtCln75BdmLGCVVyem83Vg4CLU
 tt7KHzMmGYWJEQPK8e8phGBzcCMpJeA8hKZnISw=
X-Google-Smtp-Source: ABdhPJy6cRAf4W3cOAuuzfVhJo3a4+2uxif4hfPxqd+fhpuDg6D55ZbZ9I7VrcPd+trQZ1xaNNNL9mm5i8yzBgqD5O4=
X-Received: by 2002:a05:6808:14cf:: with SMTP id
 f15mr9146175oiw.39.1616751636428; 
 Fri, 26 Mar 2021 02:40:36 -0700 (PDT)
MIME-Version: 1.0
References: <20210326091547.12375-1-zhangqing@rock-chips.com>
 <20210326091547.12375-3-zhangqing@rock-chips.com>
In-Reply-To: <20210326091547.12375-3-zhangqing@rock-chips.com>
From: Enric Balletbo Serra <eballetbo@gmail.com>
Date: Fri, 26 Mar 2021 10:40:24 +0100
Message-ID: <CAFqH_53zjUTr8hOutPRmLL+=KsX-zENVCex-gweN-3dTpC-RiQ@mail.gmail.com>
Subject: Re: [PATCH v5 02/11] arm: dts: rockchip: Fix power-controller node
 names for rk3188
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
X-CRM114-CacheID: sfid-20210326_094038_488599_F79FAE5A 
X-CRM114-Status: GOOD (  13.36  )
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
aWEgZHYuLCAyNiBkZQptYXLDpyAyMDIxIGEgbGVzIDEwOjE3Ogo+Cj4gVXNlIG1vcmUgZ2VuZXJp
YyBuYW1lcyAoYXMgcmVjb21tZW5kZWQgaW4gdGhlIGRldmljZSB0cmVlIHNwZWNpZmljYXRpb24K
PiBvciB0aGUgYmluZGluZyBkb2N1bWVudGF0aW9uKQo+Cj4gU2lnbmVkLW9mZi1ieTogRWxhaW5l
IFpoYW5nIDx6aGFuZ3FpbmdAcm9jay1jaGlwcy5jb20+CgpSZXZpZXdlZC1ieTogRW5yaWMgQmFs
bGV0Ym8gaSBTZXJyYSA8ZW5yaWMuYmFsbGV0Ym9AY29sbGFib3JhLmNvbT4KCj4gLS0tCj4gIGFy
Y2gvYXJtL2Jvb3QvZHRzL3JrMzE4OC5kdHNpIHwgNiArKystLS0KPiAgMSBmaWxlIGNoYW5nZWQs
IDMgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9hcmNoL2Fy
bS9ib290L2R0cy9yazMxODguZHRzaSBiL2FyY2gvYXJtL2Jvb3QvZHRzL3JrMzE4OC5kdHNpCj4g
aW5kZXggMjI5OGE4ZDg0MGJhLi41ZGIzMmZkYmU2ZTcgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm0v
Ym9vdC9kdHMvcmszMTg4LmR0c2kKPiArKysgYi9hcmNoL2FybS9ib290L2R0cy9yazMxODguZHRz
aQo+IEBAIC02OTksNyArNjk5LDcgQEAKPiAgICAgICAgICAgICAgICAgI2FkZHJlc3MtY2VsbHMg
PSA8MT47Cj4gICAgICAgICAgICAgICAgICNzaXplLWNlbGxzID0gPDA+Owo+Cj4gLSAgICAgICAg
ICAgICAgIHBkX3Zpb0BSSzMxODhfUERfVklPIHsKPiArICAgICAgICAgICAgICAgcG93ZXItZG9t
YWluQFJLMzE4OF9QRF9WSU8gewo+ICAgICAgICAgICAgICAgICAgICAgICAgIHJlZyA9IDxSSzMx
ODhfUERfVklPPjsKPiAgICAgICAgICAgICAgICAgICAgICAgICBjbG9ja3MgPSA8JmNydSBBQ0xL
X0xDREMwPiwKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8JmNydSBBQ0xLX0xD
REMxPiwKPiBAQCAtNzIxLDcgKzcyMSw3IEBACj4gICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgPCZxb3NfcmdhPjsKPiAgICAgICAgICAgICAgICAgfTsKPgo+IC0gICAgICAgICAgICAg
ICBwZF92aWRlb0BSSzMxODhfUERfVklERU8gewo+ICsgICAgICAgICAgICAgICBwb3dlci1kb21h
aW5AUkszMTg4X1BEX1ZJREVPIHsKPiAgICAgICAgICAgICAgICAgICAgICAgICByZWcgPSA8Uksz
MTg4X1BEX1ZJREVPPjsKPiAgICAgICAgICAgICAgICAgICAgICAgICBjbG9ja3MgPSA8JmNydSBB
Q0xLX1ZEUFU+LAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwmY3J1IEFDTEtf
VkVQVT4sCj4gQEAgLTczMCw3ICs3MzAsNyBAQAo+ICAgICAgICAgICAgICAgICAgICAgICAgIHBt
X3FvcyA9IDwmcW9zX3ZwdT47Cj4gICAgICAgICAgICAgICAgIH07Cj4KPiAtICAgICAgICAgICAg
ICAgcGRfZ3B1QFJLMzE4OF9QRF9HUFUgewo+ICsgICAgICAgICAgICAgICBwb3dlci1kb21haW5A
UkszMTg4X1BEX0dQVSB7Cj4gICAgICAgICAgICAgICAgICAgICAgICAgcmVnID0gPFJLMzE4OF9Q
RF9HUFU+Owo+ICAgICAgICAgICAgICAgICAgICAgICAgIGNsb2NrcyA9IDwmY3J1IEFDTEtfR1BV
PjsKPiAgICAgICAgICAgICAgICAgICAgICAgICBwbV9xb3MgPSA8JnFvc19ncHU+Owo+IC0tCj4g
Mi4xNy4xCj4KPgo+Cj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwo+IExpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdAo+IExpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKPiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
