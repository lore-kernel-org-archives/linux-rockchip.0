Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E67C1C25B7C
	for <linux-rockchip@archiver.kernel.org>; Fri, 31 May 2024 11:44:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mSAPK90+/bVUMPW22TTWioyQ7uxISPsa4BNNaPDVbeM=; b=xXujmCTMAI0r1v
	XhKrjBonirDz7KzUu0iIENhwYdeISNmq7JVXwFij738RFk0vFS3yWKluwwhGHaKlb//7E2/V+NoCS
	/V5hsoX+wPd+xV81WrOPyfWtUrbTtmHkwWsHlnQ8+3Q6XrgpNCw/jrPUFerY4GzHMW2MDVAGPRqi3
	El/UE07hEwdfBVYjFLriuHNwLsSbhWNDStrjKyrUMxOQ/ZjV3YGtCxSv60pcjt49oO1xgtXxRhUtk
	LnG7MzQV4KFhTdBJHFa9dix76uWVmRL+eQ/wxzgiNwfEOchpwcVFMY6cCl3zeDSf4R2GVEIh7jPFh
	8q6PdfhAMDh6LGWsDgFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sD0gV-0000000A6Zd-2HZS;
	Fri, 31 May 2024 11:44:35 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sD0gS-0000000A6ZA-2L1G;
	Fri, 31 May 2024 11:44:34 +0000
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-a59a352bbd9so310234366b.1;
        Fri, 31 May 2024 04:44:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717155869; x=1717760669; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wqd5CJWs8bzLK+RMndMHq317X+gT2llkhqAxoGBYvLU=;
        b=DX2FYue2MVoX7kbSsYQcvrpuEtPvDWg6gV9uHMZIQnnxv4G63OCRDgxaw78aINRRhD
         OIcY7FFMkGZIR6xEfAiexogQnN11HE2xQzFRQJtM1eBojEpJSM12WR6RFm0KRUknQBWc
         l67dEUSeFetDagCXYPL7yj4SxbA97SZVyWG/DWOq7REbZ5yvPTS7kuIqV2nzUHxXMUEA
         bsFxN9DadFwyg/NBFHS582TKgl6W6+/nACsivV09glpKlWMMzXmPjgh5D7niVgf1vs8j
         zXOWEGOrO8MwOVEK2ZSFJum0AH7lDvw3v7u+nTctax1kvC+EjYsoZ9LTT4lu//sRTVQv
         hoFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717155869; x=1717760669;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wqd5CJWs8bzLK+RMndMHq317X+gT2llkhqAxoGBYvLU=;
        b=kLDnrkdV8Y7v8sWwWWvezUln+8lHUyp7VnGbHYmi2pfDf+PNsprdHErYbRrpO1lkgW
         8tDK3URwqC/eI/qCSGDMuAjg50IqkMQDKNEU9HVWQskdZO2+lFGu8ABhJKDErceykXtP
         CVtgrCK8ESdAkgMtthFNh+I5o0PuLD1be5jGb/lYzOiljzSsoKwkvyiADYRmFv+vx5e+
         5q9sI/8D1gKJ47PVnpuK8fBCidjJL70dELIoZseOThu+FZTV6qzALZjw6XpGKuU0TPWl
         XWVe9keVU5UmyxgxT6yLrUOOrJaNGct7bJuV2uRwruTS4abxNKxyMQevXK27WUSRaYDK
         g5EQ==
X-Forwarded-Encrypted: i=1; AJvYcCXTHT64SvRIIL9LugV8X1SU/NV3vyVvHreKrjhn+seanGDu+TgwDmKBS3stwVaEc7KRTxpleo7inzXS/x8JLH9e6d3EFmo4/Kc9Fasb9IwZuJhE4TDXUqj/W5FY2nNpaSPGg+NOf/hoHbDlFqHQ6nyNZbauX+J/M+s=
X-Gm-Message-State: AOJu0YwnHV4p30mQOFuQQjLOLaBk16qfStBfffp8WksPJRm8oQyQRp9t
	3oaRcy1pEUc2x3SSVhX124HpKa4NB/ECI8j37xYHPd4zWEKa7/UZO/NowreT6+M2osvOG1Yc3cT
	8PwVuMRwrQCpxmMOGBUAbVkiC2No=
X-Google-Smtp-Source: AGHT+IF0Qcu9EJQr44+eGVBolIVBmGWoyCtqb1nUMq+iFXyzHjYzB1XGjgJZdgvl6m/6O9x6S/jQYc6TUKvIW8vbQQU=
X-Received: by 2002:a17:907:1044:b0:a68:8cf2:4985 with SMTP id
 a640c23a62f3a-a688cf249f7mr56590066b.37.1717155868742; Fri, 31 May 2024
 04:44:28 -0700 (PDT)
MIME-Version: 1.0
References: <673dcf47596e7bc8ba065034e339bb1bbf9cdcb0.1716948159.git.dsimic@manjaro.org>
 <CABjd4YxD41DEkBCZfkznLboEY9ZVOfTCLcj4S_kkcsVswbANyQ@mail.gmail.com>
 <8f8623e29a479c4108141302e708dc3b@manjaro.org> <CABjd4Yy4RMg+6-4ygV0MSwJj5LReY-ymbctq4PPfVZ6L+c1tsw@mail.gmail.com>
 <166cc4e46f31644a50306625b2ab18a6@manjaro.org> <CABjd4YzDNQa45=KC_t0xnTDrH+g-oUrcpgP55oOj7JcAuu7uFw@mail.gmail.com>
 <82db817a908b761d8c3d73ea04714314@manjaro.org> <607f4da8-99b2-4379-9567-4bfd2744eab3@kwiboo.se>
In-Reply-To: <607f4da8-99b2-4379-9567-4bfd2744eab3@kwiboo.se>
From: Alexey Charkov <alchark@gmail.com>
Date: Fri, 31 May 2024 15:44:17 +0400
Message-ID: <CABjd4YxdM+cM+z7ou3=DF2SrFM0235DSTZ45o0NsKBwGrgW8Bg@mail.gmail.com>
Subject: Re: [RFC PATCH] arm64: dts: rockchip: Make preparations for
 per-RK3588-variant OPPs
To: Jonas Karlman <jonas@kwiboo.se>
Cc: Dragan Simic <dsimic@manjaro.org>, linux-rockchip@lists.infradead.org, heiko@sntech.de, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
	robh+dt@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	linux-kernel@vger.kernel.org, quentin.schulz@cherry.de, wens@kernel.org, 
	daniel.lezcano@linaro.org, didi.debian@cknow.org, 
	krzysztof.kozlowski+dt@linaro.org, viresh.kumar@linaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240531_044432_633893_8F6B8253 
X-CRM114-Status: GOOD (  31.95  )
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

SGkgSm9uYXMsCgpPbiBGcmksIE1heSAzMSwgMjAyNCBhdCAzOjI34oCvUE0gSm9uYXMgS2FybG1h
biA8am9uYXNAa3dpYm9vLnNlPiB3cm90ZToKPgo+IEhpIEFsZXhleSBhbmQgRHJhZ2FuLAo+Cj4g
T24gMjAyNC0wNS0zMCAyMTozMSwgRHJhZ2FuIFNpbWljIHdyb3RlOgo+ID4gSGVsbG8gQWxleGV5
LAo+ID4KPgo+IFtzbmlwXQo+Cj4gPj4+Pj4gVGhhdCB3YXkgd2UnbGwgaGF2ZSBubyByb2FkYmxv
Y2tzIGlmLCBhdCBzb21lIHBvaW50LCB3ZSBlbmQgdXAgd2l0aAo+ID4+Pj4+IGhhdmluZwo+ID4+
Pj4+IGRpZmZlcmVudCBPUFBzIGRlZmluZWQgZm9yIHRoZSBSSzM1ODggYW5kIHRoZSBSSzM1ODhT
IHZhcmlhbnRzLiAgT3IKPiA+Pj4+PiBtYXliZQo+ID4+Pj4+IGV2ZW4gZm9yIHRoZSBSSzM1ODIs
IHdoaWNoIHdlIGRvbid0IGtub3cgbXVjaCBhYm91dCB5ZXQuCj4gPj4+Pgo+ID4+Pj4gR3Vlc3Mg
d2UnbGwgZGVhbCB3aXRoIHRoYXQgb25lIG9uY2Ugd2Ugc3R1bWJsZSB1cG9uIGFuIGFjdHVhbCBS
SzM1ODIKPiA+Pj4+IGJvYXJkIG91dCBpbiB0aGUgd2lsZCBhbmQgaGVhZGluZyB0byB0aGUgbWFp
bmxpbmUga2VybmVsIHRyZWUgOikKPiA+Pj4KPiA+Pj4gT2YgY291cnNlLCB0aGF0IHdhcyBqdXN0
IGFuIGV4YW1wbGUgZm9yIHRoZSBmdXR1cmUgdXNlLgo+ID4+Cj4gPj4gSW4gZmFjdCwgSSd2ZSBq
dXN0IGRpc2NvdmVyZWQgdGhhdCBSYWR4YSBoYXMgcmVjZW50bHkgcmVsZWFzZWQgUm9jayA1Qwo+
ID4+IExpdGUgd2hpY2ggaXMgYmFzZWQgb24gUkszNTgyLCBhbmQgc3RhcnRzIGF0IGp1c3QgJDI5
IGZvciB0aGUgMUdCCj4gPj4gdmVyc2lvbiwgbWFraW5nIGl0IGludGVyZXN0aW5nIGZvciB0aW5r
ZXJpbmcuIEVzcGVjaWFsbHkgZ2l2ZW4gdGhhdAo+ID4+IGl0cyBHUFUsIG9uZSBvZiB0aGUgYmln
LWNvcmUgY2x1c3RlcnMgYW5kIG9uZSBvZiB0aGUgVlBVIGNvcmVzIHNlZW0gdG8KPiA+PiBiZSBk
aXNhYmxlZCBpbiBzb2Z0d2FyZSAodS1ib290KSByYXRoZXIgdGhhbiBpbiBoYXJkd2FyZSwgd2hp
Y2ggbWVhbnMKPiA+PiB0aGVyZSBpcyBzb21lIGNoYW5jZSB0aGF0IGEgcGFydGljdWxhciBTb0Mg
c3BlY2ltZW4gd291bGQgYWN0dWFsbHkKPiA+PiBoYXZlIHRoZW0gaW4gYSB3b3JraW5nIGNvbmRp
dGlvbiBhbmQgcG9zc2libGUgdG8gcmUtZW5hYmxlIGF0IG5vIGNvc3QuCj4gPj4gT3JkZXJlZCBt
eXNlbGYgb25lIHRvIGludmVzdGlnYXRlIDopCj4gPgo+ID4gWWVzLCBJIGFsc28gc2F3IHRoZSBS
SzM1ODItYmFzZWQgUk9DSyA1QyBMaXRlIGEgY291cGxlIG9mIGRheXMgYWdvLiA6KQo+ID4gSXQg
c2VlbXMgdGhhdCB0aGUgZGlzYWJsZWQgSVAgYmxvY2tzIGFyZSBkZXRlY3RlZCBhcyBkZWZlY3Rp
dmUgZHVyaW5nCj4gPiB0aGUgbWFudWZhY3R1cmluZywgd2hpY2ggbWVhbnMgdGhhdCB0aGV5IG1p
Z2h0IHdvcmsgY29ycmVjdGx5LCBvciBtaWdodAo+ID4gYWN0dWFsbHkgbWlzYmVoYXZlLiAgSXQg
c2VlbXMgc2ltaWxhciB0byB0aGUgd2F5IG9sZCB0aHJlZS1jb3JlIEFNRAo+ID4gUGhlbm9tIElJ
IENQVXMgY291bGQgc29tZXRpbWVzIGJlIG1hZGUgcXVhZC1jb3JlLgo+ID4KPgo+IEkgY2FuIGNv
bmZpcm0gdGhhdCB0aGUgUkszNTgyIGluY2x1ZGUgaXAtc3RhdGUgaW4gT1RQIGluZGljYXRpbmcK
PiB1bnVzYWJsZSBjb3JlcywgYW55IHVudXNhYmxlIGNwdSBjb3JlIGNhbm5vdCBiZSB0YWtlbiBv
bmxpbmUgYW5kIHN0YWxscwo+IExpbnV4IGtlcm5lbCBhIGZldyBleHRyYSBzZWNvbmRzIGR1cmlu
ZyBib290Lgo+Cj4gU3RhcnRlZCB3b3JraW5nIG9uIGEgcGF0Y2ggZm9yIFUtQm9vdCB0byByZW1v
dmUgYW55IGJyb2tlbiBjcHUgY29yZQo+IGFuZC9vciBjbHVzdGVyIG5vZGVzLCBzaW1pbGFyIHRv
IHdoYXQgdmVuZG9yIFUtQm9vdCBkb2VzLCBhZG9wdGVkIHRvCj4gd29yayB3aXRoIGEgbWFpbmxp
bmUgRFQgZm9yIFJLMzU4OC4KClN1cGVyYiAtIGl0J3MgZ3JlYXQgdG8gaGF2ZSBhIHBhdGNoIGZv
ciBpdCBhbHJlYWR5LCB0aGFuayB5b3UgZm9yIHdvcmtpbmcgb24gaXQhCgo+IE9uIG9uZSBvZiBt
eSBST0NLIDVDIExpdGUgYm9hcmQgb25lIG9mIHRoZSBjcHUgY29yZXMgaXMgdW51c2FibGUsIFUt
Qm9vdAo+IHJlbW92ZXMgdGhlIHJlbGF0ZWQgY3B1IGNsdXN0ZXIgbm9kZXMuIE9uIGFub3RoZXIg
Uk9DSyA1QyBMaXRlIGJvYXJkIG9uZQo+IHJrdmRlYyBjb3JlIGlzIG9ubHkgbWFya2VkIHVudXNh
YmxlIGFuZCBhbGwgY3B1IGNvcmVzIGNhbiBiZSB0YWtlbgo+IG9ubGluZSwgVS1Cb290IGRvZXMg
bm90aGluZyBpbiB0aGlzIGNhc2UuIEd1ZXNzaW5nIHdlIHNob3VsZCBhcHBseQo+IHNpbWlsYXIg
cG9saWN5IGFzIHZlbmRvciBVLUJvb3QgYW5kIGRpc2FibGUgY29yZXMgYW55d2F5LgoKSXMgdGhl
cmUgYW55IG1pc2JlaGF2aW9yIC8gaW5zdGFiaWxpdHkgaWYgeW91IGp1c3Qga2VlcCBhbGwgdGhl
CnVubWFya2VkIGNvcmVzIG9ubGluZT8KCkkgdGhpbmsgZnJvbSBhbiBlbmQtdXNlciBwZXJzcGVj
dGl2ZSBpdCB3b3VsZCBiZSBiZXR0ZXIgdG8ganVzdCBlbmFibGUKZXZlcnl0aGluZyB0aGF0IHdv
cmtzLCBhcyB0aGUgcmVhc29uIHRvIHVuY29uZGl0aW9uYWxseSBkaXNhYmxlIHNvbWUKSVAgYmxv
Y2tzIGV2ZW4gd2hlbiB0aGV5IGFyZSAiZ29vZCIgaXMgcXVpdGUgbGlrZWx5IG5vdCBhIHRlY2hu
aWNhbApvbmUgYnV0IHJhdGhlciBhIG1hcmtldGluZyBvbmUuIEl0J3MgaGFyZCB0byBqdXN0aWZ5
IHNlbGxpbmcgY2hpcHMKd2l0aCBkaWZmZXJlbnQgc2V0cyBvZiB3b3JraW5nIElQIGJsb2NrcyB1
bmRlciB0aGUgc2FtZSBsYWJlbCBhbmQgdGhlCnNhbWUgcHJpY2UsIG1ha2luZyBpdCBlYXNpZXIg
dG8ganVzdCB0cmltIHRoZW0gYWxsIHRvIGEgbG93ZXN0IGNvbW1vbgpkZW5vbWluYXRvci4gT24g
dGhlIG90aGVyIGhhbmQsIG9uY2UgYSBwZXJzb24gaGFzIGFscmVhZHkgYm91Z2h0IGEKZGV2aWNl
IHdoZXJlIHNvbWUgSVAgYmxvY2tzIHdvcmsgZXZlbiBpZiB0aGV5IGFyZSBub3Qgc3VwcG9zZWQg
dG8sIHdoeQpub3QgbWFrZSB1c2Ugb2YgdGhlbT8gSXQgY29zdHMgbm90aGluZywgaHVydHMgbm9v
bmUuLi4KCkJlc3QgcmVnYXJkcywKQWxleGV5CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
