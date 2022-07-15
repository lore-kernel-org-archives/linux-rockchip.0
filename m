Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3852DC433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Jul 2022 18:57:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NXk/N3KyTznfb9wzAYcPe9LK3vPqk0OQZVcrU4SB5dA=; b=VdRvBGdDdxfo1a
	2UhgXCrVNNFbRWKUHU/SxH5U4T2ISKsxRpdaY95vjjWtZPhs7ig/m6UGN2RkdhE/XXbleD847yxCR
	5FYOsT3ksqXiqwZc2m8/WHiOM8QVRWrQX4s3nFy5YXygs9d//samPm0X+Jg0OsFIX8VVMtwMPEyPG
	TYcfutWI/qPp7h+y9N+O0acGZOZmnX161q3aDT6PVzUPhvP//AwFapUuwiJB7bkphj5VkuKjGnLGV
	8UshF92wLSacHy4lCQevWftqHKGG5/l4IYlReUjHkPhZHdan2FsWnLOPvUkG4cjKTrNTz/RNhVvyE
	W4wcKlyAJ5G0ZH3BHZRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oCQVP-009YQI-T0; Fri, 15 Jul 2022 18:57:39 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oCQVF-009YLg-Hj
	for linux-rockchip@lists.infradead.org; Fri, 15 Jul 2022 18:57:30 +0000
Received: by mail-ed1-x52c.google.com with SMTP id e15so7461530edj.2
        for <linux-rockchip@lists.infradead.org>; Fri, 15 Jul 2022 11:57:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kohlschutter-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=cGwhK/ZtvSr9wwZc7/rNFgjUf04Hq4lw/c5RyLtXhv4=;
        b=n30FiJMdCmOAUiVxpAmFVASHuizhc6AX2acGIQrmGWi2ITlMu7dy5tY3GAusQZCwUX
         mClk0//XWWNtoKOlVDp3bevjwUCPlPu6qT58ckogGwW3fiPwV3AnX1JH80Tcv/qvJxbD
         dd2hnpWUh+kbDnSUzqOnXj71sddyRZYkIlR5uwqBsXNmW8E86IjtsWgCOCj96w7UTJh1
         ekclrrbo31eDkn55oa2xD7ZY8kZCRduEeNmKBSZ3yK6cNK/PRrM+v1/yUUWmbSW8KzBk
         1G3I9oE8dPOml71Mav31UBLpfptw3Ree6F9LzjmopmoauGHoWKXK8zG7iMIjoX2r53ev
         BDow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=cGwhK/ZtvSr9wwZc7/rNFgjUf04Hq4lw/c5RyLtXhv4=;
        b=GKP/yT2XiuBgzykDUttmzztgbyCU6jFW9SjTTxRMvzwdc63+MKWkYs7nhhvhEduvtl
         irZwUDlL5fbao45PtQ2wRz6q4wvw+bneLI+inQA+Iutjhs0PfjCsewoCH9PsUgx28/6C
         c9SdGUeNNHWsJ/gsVYKjj4hCi/Rc/sCg11IDzzqy1dj36d5If6rlzY3ctFmf3tyRVQOa
         03wRLQwMOWfb2dHHcZ47FXCjOTe8jvBtfsSyESTqTkXg4DTrFSXrd4GGYwLKKty31T9u
         BuHh8X6rp18CmMo38t2MUaXFXKfiBwP5YPOIkQo+iYqGC2Kybp9ecNLRTDkaz2XpaSA1
         V7OA==
X-Gm-Message-State: AJIora81gxLRWM4B+mIyFPjBPL7D+lBCroTxYsEZMF7ybnCqcd/Dxw/D
	BbWmW/wF1jAfq9EewOqmd+PjPA==
X-Google-Smtp-Source: AGRyM1sNSdrb4hPilLYMF0OeyZKR2sc7pz98xPbz2HQO6R2iT7Hy2/VCmJFBU0H7V8xJJER7HTBMcw==
X-Received: by 2002:a05:6402:40d6:b0:43a:cc69:1db9 with SMTP id z22-20020a05640240d600b0043acc691db9mr20997614edb.380.1657911447021;
        Fri, 15 Jul 2022 11:57:27 -0700 (PDT)
Received: from smtpclient.apple (ip5b434222.dynamic.kabel-deutschland.de. [91.67.66.34])
        by smtp.gmail.com with ESMTPSA id o18-20020a170906769200b00726abf9a32bsm2329648ejm.138.2022.07.15.11.57.25
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Jul 2022 11:57:25 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.100.31\))
Subject: Re: [PATCH v4] arm64: dts: rockchip: Fix SD card init on
 rk3399-nanopi4
From: =?utf-8?Q?Christian_Kohlsch=C3=BCtter?= <christian@kohlschutter.com>
In-Reply-To: <17a4c6f6-d79c-a7b2-860f-e5944b778f9f@arm.com>
Date: Fri, 15 Jul 2022 20:57:24 +0200
Cc: wens@kernel.org,
 =?utf-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Markus Reichl <m.reichl@fivetechno.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Linux MMC List <linux-mmc@vger.kernel.org>
Message-Id: <BEEF9E7B-E8A9-4E33-B53B-72D72F9EA536@kohlschutter.com>
References: <C639AD88-77A1-4485-BAEA-2FF8FC15A844@kohlschutter.com>
 <12878108.O9o76ZdvQC@diego> <103b714c-b07c-f016-1062-84bd94786b22@arm.com>
 <9AF1E75F-5947-49B0-887D-82C426527B99@kohlschutter.com>
 <590f7a08-a6ca-be54-4254-363343642a52@arm.com>
 <A6B896E5-CD25-4441-B6A5-0BE1FA284B2C@kohlschutter.com>
 <A9634366-A012-43D2-B253-8BB9BF6005C7@kohlschutter.com>
 <CAGb2v65Ehbu1wrib2CzF1fDZuD3fHZQDhKfVusyUF9KnxTvi+Q@mail.gmail.com>
 <5ca9bd94-54d9-04f8-0098-a56ffb6f5fe1@arm.com>
 <502b3fbe-3077-407e-6010-a8cb3ffce7d6@arm.com>
 <449292CA-CE60-4B90-90F7-295FBFEAB3F8@kohlschutter.com>
 <73F9AED0-D2A8-4294-B6E1-1B92D2A36529@kohlschutter.com>
 <115AD6A4-021B-4879-BFB5-BC7689A0203E@kohlschutter.com>
 <17a4c6f6-d79c-a7b2-860f-e5944b778f9f@arm.com>
To: Robin Murphy <robin.murphy@arm.com>
X-Mailer: Apple Mail (2.3696.100.31)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220715_115729_595886_155CDE6F 
X-CRM114-Status: GOOD (  21.21  )
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

PiBBbSAxNS4wNy4yMDIyIHVtIDIwOjExIHNjaHJpZWIgUm9iaW4gTXVycGh5IDxyb2Jpbi5tdXJw
aHlAYXJtLmNvbT46Cj4gCj4gT24gMjAyMi0wNy0xNSAxODoxNiwgQ2hyaXN0aWFuIEtvaGxzY2jD
vHR0ZXIgd3JvdGU6Cj4+IE9LLCB0aGlzIHRvb2sgbWUgYSB3aGlsZSB0byBmaWd1cmUgb3V0Lgo+
PiBXaGVuIG5vIHVuZGVydm9sdGFnZSBsaW1pdCBpcyBjb25maWd1cmVkLCBJIGNhbiByZWxpYWJs
eSB0cmlnZ2VyIHRoZSBpbml0aWFsaXphdGlvbiBidWcgdXBvbiBib290Lgo+PiBXaGVuIHRoZSBs
aW1pdCBpcyBzZXQgdG8gMy4wViwgaXQgcmFyZWx5IG9jY3VycywgYnV0IGp1c3QgYWZ0ZXIgSSBz
ZW5kIHRoZSB2MyBwYXRjaCwgSSB3YXMgYWJsZSB0byByZXByb2R1Y2UuLi4KPiAKPiBXZWxsIHRo
aXMgaGFzIHRvIGJlIGluIHRoZSBydW5uaW5nIGZvciAid2VpcmRlc3QgcGxhY2VibyBldmVyIi4u
LiA6Lwo+IAo+IEFsbCBpdCBhY3R1YWxseSBzZWVtcyB0byBhY2hpZXZlIGlzIHByaW50aW5nIGFu
IGVycm9yWzFdICh0aGlzIGlzIGFmdGVyIGFsbCBhIHRpbnkgNS1waW4gZml4ZWQtdm9sdGFnZSBM
RE8gcmVndWxhdG9yLCBub3QgYW4gaW50ZWxsaWdlbnQgUE1JQyksIGFuZCBpZiB0aGF0IG1ha2Vz
IGFuIGFwcHJlY2lhYmxlIGRpZmZlcmVuY2UgdGhlbiB0aGVyZSBoYXMgdG8gYmUgc29tZSBraW5k
IG9mIHdlaXJkIHRpbWluZyBjb25kaXRpb24gYXQgcGxheS4gTWF5YmUgcmVndWxhdG9yX3JlZ2lz
dGVyKCkgZW5kcyB1cCB0dXJuaW5nIGl0IG9mZiBhbmQgb24gYWdhaW4gcmFwaWRseSBlbm91Z2gg
dGhhdCB0aGUgY2FyZCBzZWVzIGEgdm9sdGFnZSBicm93bm91dCBhbmQgZ2xpdGNoZXMsIGFuZCBh
ZGRpbmcgbW9yZSBkZWxheSBieSBwcmludGluZyB0byB0aGUgY29uc29sZSBzb21ld2hlcmUgaW4g
dGhlIG1pZGRsZSBnaXZlcyBpdCBlbm91Z2ggdGltZSB0byBhY3QgYXMgYSBwcm9wZXIgcG93ZXIg
Y3ljbGUgd2l0aCBubyBpbGwgZWZmZWN0PwoKVGhhdCdzIGRlZmluaXRlbHkgc29tZXRoaW5nIGJl
dHdlZW4gcGxhY2VibyBhbmQgaG9tZW9wYXRoeSA6LSkKCkkgY2FuIGNvbmZpcm0gdGhhdCBzZXR0
aW5nIGEgbGltaXQgaGlnaGVyIHRoYW4gMy4wViBzdGlsbCB3b3Jrcywgd2hpY2ggbWVhbnMgdGhh
dCB0aGUgb25lIHRpbWUgaW5jaWRlbnQgd2hlcmUgaXQgc3RpbGwgY3Jhc2hlZCBtZWFucyB0aGF0
IHRoZXJlJ3MgaW5kZWVkIGEgdGltaW5nIGlzc3VlIGF0IHBsYXksIGFuZCBhZGRpbmcgdGhhdCB1
bmRlcnZvbHRhZ2Ugc3RhdGVtZW50ICh1bmxpa2UgdGhlIHJhbXAtZGVsYXkgY29uZmlncyB0aGF0
IEkgYWxzbyB0cmllZCkgYWRkZWQganVzdCBlbm91Z2ggb2YgYSBkZWxheSB0aGF0IG1hZGUgaXQg
d29yayA5OSBvdXQgb2YgMTAwIHRpbWVzLgoKPiBJZiB5b3UganVzdCB3aGFjayBzb21ldGhpbmcg
bGlrZSBhbiBtZGVsYXkoNTAwKSBhdCBhcm91bmQgdGhhdCBwb2ludCBpbiBzZXRfbWFjaGluZV9j
b25zdHJhaW50cygpLCB3aXRob3V0IHRoZSBEVCBwcm9wZXJ0eSwgZG9lcyBpdCBoYXZlIHRoZSBz
YW1lIGVmZmVjdD8KQWRkaW5nIGEgZGVsYXkgZm9yIHZjYzN2MF9zZCB3b3Jrcywgd2hpY2ggaXMg
Z3JlYXQhIChwYXRjaCBiZWxvdykKCklzIHRoZXJlIGFuIGV4aXN0aW5nIHBhdGggZnJvbSBkZXZp
Y2UtdHJlZSBwYXJzZXIgdG8gcmVndWxhci9jb3JlLmMgdGhhdCB3ZSBjYW4gdXNlIHRvIHNwZWNp
ZnkgdGhpcyBkZWxheSBzcGVjaWZpY2FsbHkgZm9yIHRoaXMgcmVndWxhdG9yPwpBbHNvLCB3aGF0
IGRlbGF5IHNob3VsZCB3ZSBjaG9vc2UgdG8gbWFrZSBzdXJlIGl0IHdvcmtzIGFsbCB0aGUgdGlt
ZSBhbmQgbm90IGp1c3QgOTkgb3V0IG9mIDEwMCB0aW1lcz8KCkJlc3QsCkNocmlzdGlhbgoKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvcmVndWxhdG9yL2NvcmUuYyBiL2RyaXZlcnMvcmVndWxhdG9yL2Nv
cmUuYwppbmRleCBjNGQ4NDRmZmFkN2EuLjBlMTVlYzI1NDhmNCAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9yZWd1bGF0b3IvY29yZS5jCisrKyBiL2RyaXZlcnMvcmVndWxhdG9yL2NvcmUuYwpAQCAtMTQ4
Myw2ICsxNDgzLDExIEBAIHN0YXRpYyBpbnQgc2V0X21hY2hpbmVfY29uc3RyYWludHMoc3RydWN0
IHJlZ3VsYXRvcl9kZXYgKnJkZXYpCiAgICAgICAgICAgICAgICAgICAgICAgICAgIklDIGRvZXMg
bm90IHN1cHBvcnQgcmVxdWVzdGVkIG92ZXIgdm9sdGFnZSBsaW1pdHNcbiIpOwogICAgICAgIH0K
IAoraWYoIXN0cm5jbXAocmRldl9nZXRfbmFtZShyZGV2KSwidmNjM3YwX3NkIixzaXplb2YoInZj
YzN2MF9zZCIpKSkgeworICAgICAgIHJkZXZfZXJyKHJkZXYsICJERUxBWTogJXNcbiIsIHJkZXZf
Z2V0X25hbWUocmRldikpOworICAgICAgIG1kZWxheSg1MDApOworfQorCiAgICAgICAgaWYgKHJk
ZXYtPmNvbnN0cmFpbnRzLT51bmRlcl92b2x0YWdlX2RldGVjdGlvbikKICAgICAgICAgICAgICAg
IHJldCA9IGhhbmRsZV9ub3RpZnlfbGltaXRzKHJkZXYsCiAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBvcHMtPnNldF91bmRlcl92b2x0YWdlX3Byb3RlY3Rpb24sCgoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
