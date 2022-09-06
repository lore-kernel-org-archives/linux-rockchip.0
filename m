Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BA9E6C54EE9
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Sep 2022 21:39:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5qZJQ2FziW9oGeIhUJ/61mWHzk7+6goxVI15KLgM/yM=; b=VlZkIR7UlzTRUB
	4Vg1htJFIluJm9w87eTvw7LTna4Tc5mJMokSyKoZ5UoC4CK6z4Vns3yRd5GzOgoG9z9AUEcQC3+pA
	r1W29V/owY72nZces/hR++hYc6xilT8OAuKze9kqVv/LrzyBy+O/ryOyf0N50bl0FNMLuCdKBlExK
	xxR8UwhdZw5EGuFA21ThMoO90M3nC6B+AGtAGz6+1Dj1PvTLdTaI8zkPUEfOGa6WmoUY6XH4t9+SR
	+kEfnDjMWDuA2motNfjkVU4ac76z8udSecUcuY7AXapua4z5B1XiCXNUx4O0GFjuB9HZG33dG/9Sm
	uFm9/Y6Q2IB1zc2t3BkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVgHu-00HZSj-4A; Tue, 06 Sep 2022 21:39:18 +0000
Received: from mail-oa1-x34.google.com ([2001:4860:4864:20::34])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVgHi-00HZNi-Sm; Tue, 06 Sep 2022 21:39:09 +0000
Received: by mail-oa1-x34.google.com with SMTP id 586e51a60fabf-127a3a39131so10672478fac.13;
        Tue, 06 Sep 2022 14:39:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date;
        bh=MI08UNxAOnd9oxFmv4C6SfhMJQ/93TZu/WFSwhEtO1s=;
        b=hu11akstVs9ntl1891dAVfykY83Af2p5EQ6rWXdFAkTLJGAQGS62cIlKyV3QlYy2PD
         gOUeZm4T8IiT3eMEybGWJ5SQTiwiR7gG91o5tYWuMz08AeTKSd/DOqZeisSr9wjc0kLq
         Qtb6FJe2CQaJHsy/fCZdDykudQXbgKPrcnoGTKnCGcORd52CVMa+6GZIuf5UU9asNyU9
         HpRqyMFWLU7Fs5abApoejvk130xzZZtVQ45DshXeURdqv3MxD8DmoS3QCBkZho00Eryn
         DtZ8oO7wSc76Wtrx+6ncI+FQABvCjqEFHz6qHLcCVvxNltzypIIsB8JqpOOZVA65ey0j
         /Lzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date;
        bh=MI08UNxAOnd9oxFmv4C6SfhMJQ/93TZu/WFSwhEtO1s=;
        b=kmqzVu7ecnl9yoHmku71yY5E9cpU5hB3FhndDnIISB+V1m/YLnAU33C/bW33ZEz/E5
         oZENNGXZ9VgKsMTBebbc0xGY03qv6aQruygYe21B6HDxsisOz6Ure34IXLkBkslj5Gbb
         3aCnqo9tTi9BUZJ2Luu96ALqo6MuWbsvdfW+mIHmrYXgLDVG6YS/TEgZc15eCGb6HWZM
         Ljp4XymIX9QWOoWr+9Su6jmWA/H7Lcoy600UdDqlXuMzyy+anheQpHEBTa+aAeLkS6tI
         aQu9O6cpDGTzMc2TTEfzrlHdeV0JhHZ10QeOaE6Mjq+Ugz+dVj7moIYkV+ctFgd7+zsN
         Hi9w==
X-Gm-Message-State: ACgBeo3qqyqOMVmdlbKZ8cHBTCy3nH8tecQ2fIBq+TrihK4x1w7xCJZu
	FP+2Y4MKeEv7XDoB8s0MJ6Y=
X-Google-Smtp-Source: AA6agR46SDnWMe7UrRNnpLt3ZcK25Zg5KVlWl/Sy/h1nPuNJeRmLNAIc0KHvWXm5glgm2002p44hAw==
X-Received: by 2002:a05:6871:b21:b0:127:69ad:538e with SMTP id fq33-20020a0568710b2100b0012769ad538emr162111oab.260.1662500343070;
        Tue, 06 Sep 2022 14:39:03 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com. [76.183.134.35])
        by smtp.gmail.com with ESMTPSA id m16-20020a056808025000b00344851ea0ddsm5766777oie.56.2022.09.06.14.39.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Sep 2022 14:39:02 -0700 (PDT)
Date: Tue, 6 Sep 2022 16:38:59 -0500
From: Chris Morgan <macroalpha82@gmail.com>
To: Maya Matuszczyk <maccraft123mc@gmail.com>
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
	linux-phy@lists.infradead.org,
	devicetree <devicetree@vger.kernel.org>,
	dri-devel@lists.freedesktop.org, cl@rock-chips.com,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Peter Geis <pgwipeout@gmail.com>, vkoul@kernel.org, kishon@ti.com,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
	David Airlie <airlied@linux.ie>, Heiko Stuebner <heiko@sntech.de>,
	Sandy Huang <hjc@rock-chips.com>,
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH v2 0/5] rockchip-dsi for rk3568
Message-ID: <20220906213859.GA29434@wintermute.localdomain>
References: <20220906174823.28561-1-macroalpha82@gmail.com>
 <CAO_MupLcjY=3mWA7_RN4AAPir1Gu_GR4q1=5_9wdSEi-qcHKSQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAO_MupLcjY=3mWA7_RN4AAPir1Gu_GR4q1=5_9wdSEi-qcHKSQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220906_143907_478524_0D856910 
X-CRM114-Status: GOOD (  27.93  )
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

T24gVHVlLCBTZXAgMDYsIDIwMjIgYXQgMDc6NTc6MjhQTSArMDIwMCwgTWF5YSBNYXR1c3pjenlr
IHdyb3RlOgo+IEhlbGxvLAo+IFdoYXQgb3RoZXIgcGF0Y2hlcyB3b3VsZCBJIG5lZWQgdG8gYXBw
bHkgdG8gdGVzdCB0aGlzIHNlcmllcwo+IG9uIEFuYmVybmljIFJHNTAzPwoKSW4gYWRkaXRpb24g
dG8gdGhlc2UgcGF0Y2hlcyB5b3UnZCBuZWVkIHRoZSBkZXZpY2V0cmVlIHNlcmllczoKaHR0cHM6
Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtcm9ja2NoaXAvMjAyMjA5MDYyMTAzMjQuMjg5ODYtMS1t
YWNyb2FscGhhODJAZ21haWwuY29tLwoKWW91J2QgbmVlZCB0aGUgcGFuZWwgZHJpdmVyOgpodHRw
czovL2xvcmUua2VybmVsLm9yZy9kcmktZGV2ZWwvMjAyMjA5MDYxODM2NDIuMTI1MDUtMS1tYWNy
b2FscGhhODJAZ21haWwuY29tLwoKQW5kIHlvdSdkIG5lZWQgdG8gdXBkYXRlIHRoZSBiaW5kaW5n
IGZvciB0aGUgcGFuZWwgaW4gdGhlIGRldmljZXRyZWUKKGV4YW1wbGUgaGVyZSk6Cmh0dHBzOi8v
Z2lzdC5naXRodWIuY29tL21hY3JvbW9yZ2FuL2NhZmYwMWJmZTRkZjY5OTVkNWY3NGNlZjcwMWVk
ZTZkCgpJZiB5b3UgYXBwbHkgdGhlc2UgcGF0Y2hlcyBhbmQgcm9sbCBiYWNrIHRoZSBjbG9jayBk
cml2ZXIgY2hhbmdlcyB0aGUKcGFuZWwgc2hvdWxkIHN0YXJ0IHdvcmtpbmcgZm9yIHlvdSBhcyBp
dCBkb2VzIGZvciBtZS4gSSB0ZXN0ZWQgYnkKbnVraW5nIG15IGJ1aWxkLXRyZWUgYW5kIHN0YXJ0
aW5nIGZyZXNoIHdpdGgganVzdCB0aGVzZSBwYXRjaGVzLgoKaHR0cHM6Ly9jZG4uZGlzY29yZGFw
cC5jb20vYXR0YWNobWVudHMvOTczOTE0MDM1ODkwMjkwNzE4LzEwMTUzNTA0NzUxNTI5NDkyNDgv
SU1HXzIwMjguanBnCgpUaGFuayB5b3UuCgo+IAo+IEJlc3QgUmVnYXJkcywKPiBNYXlhIE1hdHVz
emN6eWsKPiAKPiAKPiB3dC4sIDYgd3J6IDIwMjIgbyAxOTo1MiBDaHJpcyBNb3JnYW4gPG1hY3Jv
YWxwaGE4MkBnbWFpbC5jb20+IG5hcGlzYcWCKGEpOgo+ID4KPiA+IEZyb206IENocmlzIE1vcmdh
biA8bWFjcm9tb3JnYW5AaG90bWFpbC5jb20+Cj4gPgo+ID4gVGhpcyBzZXJpZXMgYWRkcyBzdXBw
b3J0IGZvciB0aGUgZHNpIGFuZCBkcGh5IGNvbnRyb2xsZXJzIG9uIHRoZQo+ID4gUm9ja2NoaXAg
UkszNTY4LiBJIGNhbiBjb25maXJtIHRoYXQgZm9yIHRoZSBSb2NrY2hpcCBSSzM1NjggdGhpcwo+
ID4gY3VycmVudCBzZXJpZXMgRE9FUyBXT1JLIG5vdywgYnV0IGl0IHJlcXVpcmVzIHJvbGxpbmcg
YmFjayBjbGsgY2hhbmdlcwo+ID4gbWFkZSBmb3IgdGhlIEhETUkgZHJpdmVyLiBJZiB0aGUgY2xv
Y2sgY2hhbmdlcyBhcmUgbm90IHJvbGxlZCBiYWNrLCB0aGUKPiA+IGltYWdlIG9uIHRoZSBzY3Jl
ZW4gaXMgc2hpZnRlZCBhYm91dCAxMDAgcGl4ZWxzIHRvIHRoZSByaWdodC4KPiA+Cj4gPiBDbGsg
Y2hhbmdlcyBpbiBxdWVzdGlvbjoKPiA+IGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9s
aW51eC9rZXJuZWwvZ2l0L3RvcnZhbGRzL2xpbnV4LmdpdC9jb21taXQvZHJpdmVycy9jbGsvcm9j
a2NoaXAvY2xrLXJrMzU2OC5jP2lkPWZmMzE4N2VhYmI1Y2U0NzhkMTViNmVkNjJlYjI4Njc1NmFk
ZWZhYzMKPiA+IGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0
L3RvcnZhbGRzL2xpbnV4LmdpdC9jb21taXQvZHJpdmVycy9jbGsvcm9ja2NoaXAvY2xrLXJrMzU2
OC5jP2lkPTZlNjkwNTJmMDFkOTEzMTM4OGNmY2ZhZWU5MjkxMjAxMThhMjY3ZjQKPiA+Cj4gPiBU
ZXN0ZWQgb24gYW4gQW5iZXJuaWMgUkc1MDMgYW5kIFJHMzUzUCB3aXRoIGNsb2NrIGNoYW5nZXMg
cm9sbGVkIGJhY2ssCj4gPiB0aGUgaGFyZHdhcmUgd29ya3MgY29ycmVjdGx5IG9uIGJvdGggZGV2
aWNlcy4KPiA+Cj4gPiBDaGFuZ2VzIHNpbmNlIFJGQ3YxOgo+ID4gIC0gSWRlbnRpZmllZCBjYXVz
ZSBvZiBpbWFnZSBzaGlmdCAoY2xvY2sgY2hhbmdlcykuCj4gPiAgLSBOb3RlZCB0aGF0IGRyaXZl
ciB3b3JrcyBub3cuCj4gPiAgLSBBZGRlZCBkZXZpY2V0cmVlIG5vZGVzIGZvciByazM1NnguZHRz
aS4KPiA+Cj4gPiBDaHJpcyBNb3JnYW4gKDUpOgo+ID4gICBkdC1iaW5kaW5nczogZGlzcGxheTog
cm9ja2NoaXAtZHNpOiBhZGQgcmszNTY4IGNvbXBhdGlibGUKPiA+ICAgZHQtYmluZGluZ3M6IHBo
eS1yb2NrY2hpcC1pbm5vLWRzaWRwaHk6IGFkZCBjb21wYXRpYmxlIGZvciByazM1NjgKPiA+ICAg
ZHJtL3JvY2tjaGlwOiBkc2k6IGFkZCByazM1Njggc3VwcG9ydAo+ID4gICBwaHkvcm9ja2NoaXA6
IGlubm8tZHNpZHBoeTogQWRkIHN1cHBvcnQgZm9yIHJrMzU2OAo+ID4gICBhcm02NDogZHRzOiBy
b2NrY2hpcDogQWRkIERTSSBhbmQgRFNJLURQSFkgbm9kZXMgdG8gcmszNTZ4Cj4gPgo+ID4gIC4u
Li9kaXNwbGF5L3JvY2tjaGlwL2R3X21pcGlfZHNpX3JvY2tjaGlwLnR4dCB8ICAgMSArCj4gPiAg
Li4uL2JpbmRpbmdzL3BoeS9yb2NrY2hpcCxweDMwLWRzaS1kcGh5LnlhbWwgIHwgICAxICsKPiA+
ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2eC5kdHNpICAgICAgfCAgNzIgKysr
KysrKwo+ID4gIC4uLi9ncHUvZHJtL3JvY2tjaGlwL2R3LW1pcGktZHNpLXJvY2tjaGlwLmMgICB8
ICA1MSArKysrLQo+ID4gIC4uLi9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLWlubm8tZHNpZHBo
eS5jICB8IDIwNCArKysrKysrKysrKysrKy0tLS0KPiA+ICA1IGZpbGVzIGNoYW5nZWQsIDI4MSBp
bnNlcnRpb25zKCspLCA0OCBkZWxldGlvbnMoLSkKPiA+Cj4gPiAtLQo+ID4gMi4yNS4xCj4gPgo+
ID4KPiA+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4g
PiBMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKPiA+IExpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKPiA+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK
