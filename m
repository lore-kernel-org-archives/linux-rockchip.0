Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36361C636D6
	for <linux-rockchip@archiver.kernel.org>; Sat, 18 Feb 2023 00:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R+bL5YhgGRrnOza3YCC6L6idCdE7HehhGxrHegLcRXo=; b=IeGNdBJGe9ciqz
	wymhjBUyQTf9uIoT9G+rBL/onw3KO3aTLMKSjKm3I7dPF5eVOGa2q2aGPdZBOgINrmvTfS7zZUDX/
	OUdXxZiMCvKK68WPOeMWM2z3/PVp841fmhby7i1irHSW5boS4vf2vMmdKRjDrGK1/tUvMfzobMnus
	jaJbw38mP7CP/vMFitayVN8b0CdfTptrwkbM2RkdNZbOsJJdUsRBjo5Sfrhm6D6iFJqx2hom3JWYa
	e5rzHZPwUeTKbkbtm4uwXDXYJUDXh3bG5kH/GM1+lSQIyVwecfdGZumZnuKoTAJS0XP1+RBQO2PqZ
	KkoMCM9UY4JAMzFOHtog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pTAfu-00G0X1-0j; Sat, 18 Feb 2023 00:01:58 +0000
Received: from mail-ed1-x52a.google.com ([2a00:1450:4864:20::52a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pTAfg-00G0Sx-Js
	for linux-rockchip@lists.infradead.org; Sat, 18 Feb 2023 00:01:46 +0000
Received: by mail-ed1-x52a.google.com with SMTP id co2so9786280edb.13
        for <linux-rockchip@lists.infradead.org>; Fri, 17 Feb 2023 16:01:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kohlschutter-com.20210112.gappssmtp.com; s=20210112;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EeFzD8Gkwqt455RHoaOjOeMVzGIa8tNFoTFyyh8rWfA=;
        b=DTLkbmMA0cgX2XdVwgWeFtYboPCmbmsu3OmV2hYxhtBey37Zw8IazxIWpdaU7QbbYw
         iPq02wcf7WM4zCfY+IOjawp7SGzeGrC3pntam9ruJr77Ms2bCOi5tSsAHUBTV3F0j1qo
         cuhq9js6hot4G/fhkPuGvP9UzNnctSMOfqk1weL53muzvUYsQUHP4i354324DG5P/G1v
         PBgShuSYoHziZElUvFxS79KKjvrX0QWQETuVEydpbyBGQHici9wCX2eAA0kjMMLk/Hon
         LG4E+iQMUsG720nnC3VX42qbIXxvXMiQG5LMXSJxDGy1KbUxeukRxkutyjQ5MavwDUBC
         B3KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EeFzD8Gkwqt455RHoaOjOeMVzGIa8tNFoTFyyh8rWfA=;
        b=qFKxa2VAGxbpiMS9ZcYmahhEmvukdSNBaihAvM5GJi/VWqiqiGjEypgf8PKb8HJySK
         U6xaxA8ONViSQkap0y+YOHxsNH1e2Z6RDIYTfTgF2DgxbbyHSa3LGEYMcUo+Y5CbVsbV
         yO4sZ8xaBJgD+4zMS79+oYhs/cXfZynwlyxn4uRp3Jlfy7bUjW/1luNSDkPAXl4bTG08
         Net+afsoWWL4yqx2eKXrsr7F59ZIyK5mpm1W3rfuK03QgSAlAxQaGNorFLmw6lrHm+Gf
         rJ7aGfw23aY4w3l6aIWogiCK8YgYa0DQL+d6Aki9LT2+sZRv7Yt3OIWbh5v300KzJf9f
         piHg==
X-Gm-Message-State: AO0yUKU5RCCNBVYlCX7Gdozgy8kWgnBNSki1ZaoImWiVWz14WxmPNtfF
	EBgdoDq3CUExLikk9CvA9fJTXQ==
X-Google-Smtp-Source: AK7set+PnUEMbHgiFF7Ajte2EzfnX9RBJ03L+e2pHxDLhXcC9Ah0gDHHiCNHzU871r7s2xrlwYNnLQ==
X-Received: by 2002:a17:906:16c5:b0:870:94e:13f9 with SMTP id t5-20020a17090616c500b00870094e13f9mr1774545ejd.0.1676678501986;
        Fri, 17 Feb 2023 16:01:41 -0800 (PST)
Received: from smtpclient.apple (ip5f58e70e.dynamic.kabel-deutschland.de. [95.88.231.14])
        by smtp.gmail.com with ESMTPSA id f8-20020a1709067f8800b008af2a7438acsm2680535ejr.188.2023.02.17.16.01.41
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 17 Feb 2023 16:01:41 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.400.51.1.1\))
Subject: Re: [PATCH v5] regulator: core: Resolve supply name earlier to
 prevent double-init
From: =?utf-8?Q?Christian_Kohlsch=C3=BCtter?= <christian@kohlschutter.com>
In-Reply-To: <CAGETcx_OKA+MkExc98337kZYKsoJtV0ZdfYJE7Tk00CFvCt2bA@mail.gmail.com>
Date: Sat, 18 Feb 2023 01:01:30 +0100
Cc: Mark Brown <broonie@kernel.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 =?utf-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 lgirdwood@gmail.com,
 linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org,
 linux-mmc@vger.kernel.org,
 linux-rockchip@lists.infradead.org,
 m.reichl@fivetechno.de,
 robin.murphy@arm.com,
 vincent.legoll@gmail.com,
 wens@kernel.org
Message-Id: <F6AC6A52-49BA-4F80-91A8-271E11CD17E4@kohlschutter.com>
References: <932DEB17-70FB-4416-80B3-C48A7C31848F@kohlschutter.com>
 <20220825212842.7176-1-christian@kohlschutter.com>
 <CAGETcx__Ez8i9O2O30-Q1R00xOqBjkKMCwt37_AGAQjNvZqpdg@mail.gmail.com>
 <B6E001E2-9BCD-420A-B0F6-1495DE46955E@kohlschutter.com>
 <CAGETcx_OKA+MkExc98337kZYKsoJtV0ZdfYJE7Tk00CFvCt2bA@mail.gmail.com>
To: Saravana Kannan <saravanak@google.com>
X-Mailer: Apple Mail (2.3731.400.51.1.1)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230217_160144_667825_07585512 
X-CRM114-Status: GOOD (  16.51  )
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

T24gMTguIEZlYiAyMDIzLCBhdCAwMDo0NiwgU2FyYXZhbmEgS2FubmFuIDxzYXJhdmFuYWtAZ29v
Z2xlLmNvbT4gd3JvdGU6Cj4gCj4gT24gRnJpLCBGZWIgMTcsIDIwMjMgYXQgMzozMyBQTSBDaHJp
c3RpYW4gS29obHNjaMO8dHRlcgo+IDxjaHJpc3RpYW5Aa29obHNjaHV0dGVyLmNvbT4gd3JvdGU6
Cj4+IAo+PiBPbiAxOC4gRmViIDIwMjMsIGF0IDAwOjIyLCBTYXJhdmFuYSBLYW5uYW4gPHNhcmF2
YW5ha0Bnb29nbGUuY29tPiB3cm90ZToKPj4+IAo+Pj4gT24gVGh1LCBBdWcgMjUsIDIwMjIgYXQg
MjoyOCBQTSBDaHJpc3RpYW4gS29obHNjaMO8dHRlcgo+Pj4gPGNocmlzdGlhbkBrb2hsc2NodXR0
ZXIuY29tPiB3cm90ZToKPj4+PiAKPj4+PiBQcmV2aW91c2x5LCBhbiB1bnJlc29sdmVkIHJlZ3Vs
YXRvciBzdXBwbHkgcmVmZXJlbmNlIHVwb24gY2FsbGluZwo+Pj4+IHJlZ3VsYXRvcl9yZWdpc3Rl
ciBvbiBhbiBhbHdheXMtb24gb3IgYm9vdC1vbiByZWd1bGF0b3IgY2F1c2VkCj4+Pj4gc2V0X21h
Y2hpbmVfY29uc3RyYWludHMgdG8gYmUgY2FsbGVkIHR3aWNlLgo+Pj4+IAo+Pj4+IFRoaXMgaW4g
dHVybiBtYXkgaW5pdGlhbGl6ZSB0aGUgcmVndWxhdG9yIHR3aWNlLCBsZWFkaW5nIHRvIHZvbHRh
Z2UKPj4+PiBnbGl0Y2hlcyB0aGF0IGFyZSB0aW1pbmctZGVwZW5kZW50LiBBIHNpbXBsZSwgdW5y
ZWxhdGVkIGNvbmZpZ3VyYXRpb24KPj4+PiBjaGFuZ2UgbWF5IGJlIGVub3VnaCB0byBoaWRlIHRo
aXMgcHJvYmxlbSwgb25seSB0byBiZSBzdXJmYWNlZCBieQo+Pj4+IGNoYW5jZS4KPj4+IAo+Pj4g
SW4geW91ciBjYXNlLCBjYW4geW91IGVsYWJvcmF0ZSB3aGljaCBwYXJ0IG9mIHRoZSBjb25zdHJh
aW50cy9pbml0Cj4+PiB0d2ljZSBjYXVzZWQgdGhlIGlzc3VlPwo+Pj4gCj4+PiBJJ20gdHJ5aW5n
IHRvIHNpbXBsaWZ5IHNvbWUgb2YgdGhlIHN1cHBseSByZXNvbHZpbmcgY29kZSBhbmQgSSdtCj4+
PiB0cnlpbmcgdG8gbm90IGJyZWFrIHlvdXIgdXNlIGNhc2UuCj4+PiAKPj4+IC1TYXJhdmFuYQo+
PiAKPj4gSGVyZSdzIGEgd3JpdGUtdXAgb2YgbXkgdXNlIGNhc2UsIGFuZCBob3cgd2UgZ290IHRv
IHRoZSBzb2x1dGlvbjoKPj4gaHR0cHM6Ly9rb2hsc2NodWV0dGVyLmdpdGh1Yi5pby9ibG9nL3Bv
c3RzLzIwMjIvMTAvMjgvbGludXgtbmFub3BpLXI0cy8KPiAKPiBJIGRpZCByZWFkIHRoZSB3cml0
ZSB1cCBiZWZvcmUgSSBzZW50IG15IHJlcXVlc3QuIEknbSBhc2tpbmcgZm9yCj4gc3BlY2lmaWNz
IG9uIHdoaWNoIGZ1bmN0aW9ucyBpbiB0aGUgc2V0X21hY2hpbmVfY29uc3RyYWludHMoKSB3YXMK
PiBjYXVzaW5nIHRoZSBpc3N1ZS4gQW5kIGl0J3MgYWxzbyBhIGJpdCB1bmNsZWFyIHRvIG1lIGlm
IHRoZSBpc3N1ZSB3YXMKPiB3aXRoIGhhdmluZyBzdHVmZiBjYWxsZWQgdHdpY2Ugb24gdGhlIGFs
d2F5LW9uIHJlZ3VsYXRvciBvciB0aGUKPiBzdXBwbHkuCj4gCj4gLVNhcmF2YW5hCgpJJ20gYWZy
YWlkIEkgY2Fubm90IGdpdmUgYSBtb3JlIGRldGFpbGVkIGFuc3dlciB0aGFuIHdoYXQncyBpbiB0
aGUgd3JpdGUgdXAgYW5kIHRoZSBwcmV2aW91cyBkaXNjdXNzaW9uIG9uIHRoaXMgbWFpbGluZyBs
aXN0OyBJIHRob3VnaHQgaXQncyBwcmV0dHkgZGV0YWlsZWQgYWxyZWFkeS4KCkhvd2V2ZXIsIGl0
IHNob3VsZCBiZSByZWxhdGl2ZWx5IHN0cmFpZ2h0Zm9yd2FyZCB0byByZXByb2R1Y2UgdGhlIGlz
c3VlLgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
