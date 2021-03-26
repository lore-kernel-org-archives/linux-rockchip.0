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
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5912BC433C1
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Mar 2021 09:52:14 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D98E661A32
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Mar 2021 09:52:13 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D98E661A32
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AAQ+NQnUsMw/VC+qCWZHpmUoFzIP7OisBfQNMMoowig=; b=WJUHR6DVDiwnC/c3a0Xd64zza
	Wz4bHKaPiYFG6m4bLatF88IT0/Aa+itFLgMZMKg9wRYoqpDeEX0vPZTVBO/RcAlzSPDBA/IdmMfqN
	RiKYNqbLt0jLnuXF7l70ihLG1kPr4rrCrkikfstt1XkkVlrcM+E2pnu8ymRcg9d2pIT8Dd/1AY66W
	ohTnp9UJ15He14y75E05hVQJHOmCwisAVaGQ5qw67qAL8UlZpu1BC5HnT2JkzAG90UqzXCNthBpDu
	+hUmyHm7OUU337hgRYqr5evkZuW8vWJnj3pRHvv5EHTrIxn/hq3Quk8H01Qdgp7kpLJHeYsrs6Lec
	KvbzweN3g==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lPj8S-003ErU-9W; Fri, 26 Mar 2021 09:52:09 +0000
Received: from mail-oi1-x231.google.com ([2607:f8b0:4864:20::231])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lPj8E-003Emr-99; Fri, 26 Mar 2021 09:51:56 +0000
Received: by mail-oi1-x231.google.com with SMTP id n140so5150426oig.9;
 Fri, 26 Mar 2021 02:51:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=1v5R9RAiHiTdWal/LBKTgEZMw8L9OAh1BF/rlyRDwNk=;
 b=gf3vVVSZPxZRFCtP8xFDLkSkw+TQNsYgWPyG5L11PKJfbDmirLVeUMWKoYW+EOWivl
 35QrzNwXuFB8S9bICN4iGb1HHsHXtkR6p8SYed0isehs20u6SNDDb1uslWnB9eWP40JB
 zxU5LJ/dHWdMRGp2hP66nzbSniYzXewINmLwEV4GDXGBx1b83zcgOZzeNk1F5KWfAihw
 5SgdVyxX8f/s3CievaUdOfVptZGSbR8K+03eZ2sRCJ7RFLmYrnsX5TUXFHoLp3IRr8BS
 Cr2Fp6AX2ml2hVWpgYfmIqFkfAopKhvQTCZZdhdeqkJ0VHCJu2eFyR5D5lYgOONgFpK9
 HIlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=1v5R9RAiHiTdWal/LBKTgEZMw8L9OAh1BF/rlyRDwNk=;
 b=aInyb6Avc4SIc0pcognwjlSe8zYHM5bZjBylHAQmbtrfhSgggN+/HGcoYrn8JyUtux
 FYYf2IzR94Ae9ZXWKNK1UGmwBOHsfVWWzY4lMZdepCwWNwvOsydzmPzfUB7FH4wV9DBm
 eRL7WaZ50mkNFIiDJqK83EHSK2PrmkAWLHc2WD1sfj/uo+1MarQ4hcw7W2IWh8Z73kSp
 eVCRckuillUaT1G59KONJEXVfnQMtq1FaBxnottcA39TtdFlceekT6jAfbczgH8Dq0R1
 7+MstTKy9oHBnW9sd1XtyZqo2HXH15bFBXL2/KjBHh/AzFCtsBB7iYGwTty+qzFpTddh
 +/Uw==
X-Gm-Message-State: AOAM531Y3PqHAMR3v4OUT+BwVnH87kEDYx/ZDvT+swnL4qRSMguwhWvT
 QXwGbMF/CDgfNYhgEz84uJ4XoltWm3z5q0AH2To=
X-Google-Smtp-Source: ABdhPJyCffQw2ioiNr6x/UYgQkAQ+gD/2y9i4rR619mcguc3az+DELJzrc4Wq7IX/V8krOaDRfQ0+pCK8PFiQP2stBw=
X-Received: by 2002:aca:d514:: with SMTP id m20mr9174851oig.47.1616752312675; 
 Fri, 26 Mar 2021 02:51:52 -0700 (PDT)
MIME-Version: 1.0
References: <20210326091547.12375-1-zhangqing@rock-chips.com>
 <20210326091815.12754-1-zhangqing@rock-chips.com>
In-Reply-To: <20210326091815.12754-1-zhangqing@rock-chips.com>
From: Enric Balletbo Serra <eballetbo@gmail.com>
Date: Fri, 26 Mar 2021 10:51:41 +0100
Message-ID: <CAFqH_512tPbC0mv=JGQ5T8KNZ1Y2xhDrJLpsCA1jcaqpJziA8w@mail.gmail.com>
Subject: Re: [PATCH v5 10/11] dt-bindings: power: rockchip: Add bindings for
 RK3568 Soc
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
X-CRM114-CacheID: sfid-20210326_095154_630943_15CBAFAB 
X-CRM114-Status: GOOD (  11.82  )
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
aWEgZHYuLCAyNiBkZQptYXLDpyAyMDIxIGEgbGVzIDEwOjE5Ogo+Cj4gQWRkIHRoZSBjb21wYXRp
YmxlIHN0cmluZyBmb3IgUkszNTY4IFNvQy4KPgo+IFNpZ25lZC1vZmYtYnk6IEVsYWluZSBaaGFu
ZyA8emhhbmdxaW5nQHJvY2stY2hpcHMuY29tPgoKUmV2aWV3ZWQtYnk6IEVucmljIEJhbGxldGJv
IGkgU2VycmEgPGVucmljLmJhbGxldGJvQGNvbGxhYm9yYS5jb20+Cgo+IC0tLQo+ICAuLi4vZGV2
aWNldHJlZS9iaW5kaW5ncy9wb3dlci9yb2NrY2hpcCxwb3dlci1jb250cm9sbGVyLnlhbWwgICAg
fCAyICsrCj4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKykKPgo+IGRpZmYgLS1naXQg
YS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcG93ZXIvcm9ja2NoaXAscG93ZXIt
Y29udHJvbGxlci55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Bvd2Vy
L3JvY2tjaGlwLHBvd2VyLWNvbnRyb2xsZXIueWFtbAo+IGluZGV4IDlmZWM5ZTIyNzQzMi4uYTRk
MjIzMjU1YzNiIDEwMDY0NAo+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9wb3dlci9yb2NrY2hpcCxwb3dlci1jb250cm9sbGVyLnlhbWwKPiArKysgYi9Eb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcG93ZXIvcm9ja2NoaXAscG93ZXItY29udHJvbGxlci55
YW1sCj4gQEAgLTM3LDYgKzM3LDcgQEAgcHJvcGVydGllczoKPiAgICAgICAgLSByb2NrY2hpcCxy
azMzNjYtcG93ZXItY29udHJvbGxlcgo+ICAgICAgICAtIHJvY2tjaGlwLHJrMzM2OC1wb3dlci1j
b250cm9sbGVyCj4gICAgICAgIC0gcm9ja2NoaXAscmszMzk5LXBvd2VyLWNvbnRyb2xsZXIKPiAr
ICAgICAgLSByb2NrY2hpcCxyazM1NjgtcG93ZXItY29udHJvbGxlcgo+Cj4gICAgIiNwb3dlci1k
b21haW4tY2VsbHMiOgo+ICAgICAgY29uc3Q6IDEKPiBAQCAtOTAsNiArOTEsNyBAQCBwYXR0ZXJu
UHJvcGVydGllczoKPiAgICAgICAgICAgICJpbmNsdWRlL2R0LWJpbmRpbmdzL3Bvd2VyL3JrMzM2
Ni1wb3dlci5oIgo+ICAgICAgICAgICAgImluY2x1ZGUvZHQtYmluZGluZ3MvcG93ZXIvcmszMzY4
LXBvd2VyLmgiCj4gICAgICAgICAgICAiaW5jbHVkZS9kdC1iaW5kaW5ncy9wb3dlci9yazMzOTkt
cG93ZXIuaCIKPiArICAgICAgICAgICJpbmNsdWRlL2R0LWJpbmRpbmdzL3Bvd2VyL3JrMzU2OC1w
b3dlci5oIgo+Cj4gICAgICAgIGNsb2NrczoKPiAgICAgICAgICBkZXNjcmlwdGlvbjogfAo+IC0t
Cj4gMi4xNy4xCj4KPgo+Cj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwo+IExpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdAo+IExpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKPiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
