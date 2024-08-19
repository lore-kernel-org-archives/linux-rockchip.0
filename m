Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0AE34C5320E
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Aug 2024 13:14:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WKKLw9tX69orxVh02D4uvAPfpKWD/CzQ5dgxXoA30B4=; b=cut4i0YKl1fxe/
	1qIRtpCrXZuBQs76dl4dridACUe3ASqYHl8rgZw4lXicweEO5u7ePOsLOVe0A//fPFg8MvJqjxMLg
	d2rZSwx5kZaUDisRTIfM6TKP/AMJ/rvRK7AJ0aXYexpHXrtb/pd0gHhmEXu5TSuE95cGQ/DDvIBQp
	xvL1OI6t0wIZmpIDSazo6P3D6F4EANtBJbcaTUWK7OmYfC4GpwKIxsy2eFeIbkWigLLUgLiOdVxye
	+7XFjHq95RlDriXxeFrHZEvXzorQ2vGyu2uszp/mKft0R9zUxCxTdTddEJ8lEFjjI0x5RXQb21Oyr
	wjX7wCng9gJ/77SbCdNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sg2DG-00000001Xq5-3afM;
	Mon, 19 Aug 2024 13:14:22 +0000
Received: from mail-qt1-x832.google.com ([2607:f8b0:4864:20::832])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sg2DE-00000001XpH-23H0;
	Mon, 19 Aug 2024 13:14:22 +0000
Received: by mail-qt1-x832.google.com with SMTP id d75a77b69052e-44ff7cc5432so33627141cf.3;
        Mon, 19 Aug 2024 06:14:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724073258; x=1724678058; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9Wnf8Vek1pXTYVFxgy7NN2FbreAvac/mL1LGB55sZB8=;
        b=IwgjEdRlW4C4bWFO6QJ/At6rCTnR83R2Gb7eji7R4kmFS6g2W0oGpQTYXi4F+o5Edz
         UGh65Ae5AS5RCEmy2S8vOGmT2tvKjzamBxiZ3jZrd4Q4k4yZ7C+CAkXdid1z42Wgpk/U
         30nCqQLxsUb62PSyTzgRHRfXVlE85Gyvn5RsymEqydF8kZaTHy3DmjLYp9GytNsWT0oI
         Gxic38O4uSC45rqPJw01qGMDD7rGu512H1MSOVPwntPXDF21a9QA55Zmg12lYpFXzRZc
         Q9ZVcqkYcixTstY3MvhykJH/5QUURig0RCZivQzAI/a4fjuKidgzi71Bj9OiCCzouX1L
         ZBww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724073258; x=1724678058;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9Wnf8Vek1pXTYVFxgy7NN2FbreAvac/mL1LGB55sZB8=;
        b=la4ph5wjaANpRw8LLRVCBrJpnMkMjif3RH1mBlm7lXBSPpZFWydOtgZb/U/inUpWJX
         eZ/CyslkYpBuVAJEH/oQstSIV3QzsXfvyVoVH6miO+cSy9mRwfPlZFqeznOFbQvMRvXD
         mOwiC52vr0x1v/JCFXEy145BxedFinobCQ8YCcEgsJmhXhOQuU+7/UYz8usc3iyt9IaQ
         XMmmAz5tp/V4tcrDGvUZEZVpZKef+HjqYf+jOtkKvDzajcYw+mxtDu6MIEiCLd9rrLQO
         EKLbWj/s724o4+Qi1IwDdX/H/lT00e9396F68JNSpEUgFH5OZGww4EYlFWNI6gUU7kYw
         7VJg==
X-Forwarded-Encrypted: i=1; AJvYcCWtO+3cSsgPkMt4qvJQrawcEU7fU66V3R36SyNuvgCpGyu15Onz7XpLvWtoys070f19scZ8bR85mur7BZtSfw==@lists.infradead.org
X-Gm-Message-State: AOJu0YypK050NiCmiulvVSvtVKuRNvD8tsWKdI3H/BEB2BxswTLlYkSK
	26ve0dMSUjjTEqdvrWr6fzQszZGzOQh8ZhfCnAxiZMtEbJlu+gUDKn+UzGRpjiLaTisJ6uSbKXs
	0FA5W7B3QEmqUbiHQIuVOtLojG6k=
X-Google-Smtp-Source: AGHT+IFLBkF0J6o432Y3Zy+PaCUGi3zp/x8gPERl08DGLbLG4sy0WXZFbK+iZ5k2pEMDYH4oOpsk18fjk3P1xDR9I3k=
X-Received: by 2002:a05:622a:244c:b0:44f:e108:2854 with SMTP id
 d75a77b69052e-4537429fa1amr157807041cf.26.1724073258537; Mon, 19 Aug 2024
 06:14:18 -0700 (PDT)
MIME-Version: 1.0
References: <CAAMcf8Dts3=6CxNCLZBvXsdFHpaOs9mL2NJ8TMPU5+duray6-g@mail.gmail.com>
 <CAAMcf8DZu4B2AN+=8xP3wuknqUtD-e-v+Ej31=08ibPfyL+dGw@mail.gmail.com> <CAAMcf8A59MqhZEswC5VmKZyThG7oG=ztEYd_yfuOwvGTvKzMow@mail.gmail.com>
In-Reply-To: <CAAMcf8A59MqhZEswC5VmKZyThG7oG=ztEYd_yfuOwvGTvKzMow@mail.gmail.com>
From: Vicente Bergas <vicencb@gmail.com>
Date: Mon, 19 Aug 2024 15:14:06 +0200
Message-ID: <CAAMcf8Ctr9rOZ2oOzk48haakJOO2bzyNURb2oZTRxJ3tnafXUA@mail.gmail.com>
Subject: Re: [BUG] Rockchip SPI: Runtime PM usage count underflow!
To: Huang-Huang Bao <i@eh5.me>, 
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, linux-spi@vger.kernel.org, 
	Heiko Stuebner <heiko@sntech.de>, Linus Walleij <linus.walleij@linaro.org>, 
	Sasha Levin <sashal@kernel.org>
Cc: linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Mark Brown <broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240819_061420_548174_BC7BF8BC 
X-CRM114-Status: GOOD (  23.12  )
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

T24gTW9uLCBBdWcgMTksIDIwMjQgYXQgMjo0OeKAr1BNIFZpY2VudGUgQmVyZ2FzIDx2aWNlbmNi
QGdtYWlsLmNvbT4gd3JvdGU6Cj4KPiBPbiBNb24sIEF1ZyAxOSwgMjAyNCBhdCA0OjEy4oCvQU0g
VmljZW50ZSBCZXJnYXMgPHZpY2VuY2JAZ21haWwuY29tPiB3cm90ZToKPiA+Cj4gPiBPbiBTdW4s
IEF1ZyAxOCwgMjAyNCBhdCA4OjEz4oCvUE0gVmljZW50ZSBCZXJnYXMgPHZpY2VuY2JAZ21haWwu
Y29tPiB3cm90ZToKPiA+ID4KPiA+ID4gSGksCj4gPiA+IGkgYW0gYSB1c2VyIG9mIHRoZSBDT05G
SUdfU1BJX1NQSURFViBkZXZpY2UuCj4gPiA+IEl0IHN0b3BwZWQgd29ya2luZyBiZXR3ZWVuIDYu
OCBhbmQgNi4xMC41Lgo+ID4gPiBUaGUgU1BJIGJ1cyBpdHNlbGYgcmVwb3J0cyBubyBlcnJvcnMg
dG8gdXNlcnNwYWNlLCBidXQgbm8gZGV2aWNlcwo+ID4gPiBhcHBlYXIgY29ubmVjdGVkIHRvIHRo
ZSBidXMuCj4gPiA+IFRoZSBwbGF0Zm9ybSB1c2VkIGlzIFJLMzMyOC4KPiA+ID4gVGhlIG9ubHkg
c3BpLXJlbGF0ZWQgbWVzc2FnZSBpbiBkbWVzZyBpczoKPiA+ID4gcm9ja2NoaXAtc3BpIGZmMTkw
MDAwLnNwaTogUnVudGltZSBQTSB1c2FnZSBjb3VudCB1bmRlcmZsb3chCj4gPiA+Cj4gPiA+IFBs
ZWFzZSwgY2FuIHNvbWVib2R5IHJldmlldyB0aGlzIGlzc3VlPwo+ID4gPgo+ID4gPiBSZWdhcmRz
LAo+ID4gPiAgIFZpY2VudGUuCj4gPgo+ID4gSSd2ZSB0cmllZCB0byBiaXNlY3QsIGJ1dCB0aGVy
ZSBpcyBzb21lIHN0cmFuZ2UgYmVoYXZpb3VyOgo+ID4gVGhlIG1lc3NhZ2UgIlJ1bnRpbWUgUE0g
dXNhZ2UgY291bnQgdW5kZXJmbG93ISIgY2FuIGFsc28gYXBwZWFyIG9uIGEKPiA+IGdvb2Qga2Vy
bmVsLgo+ID4gSW4gb3JkZXIgdG8gaGF2ZSBhIHJlYXNvYmxlIGl0ZXJhdGlvbiBzcGVlZCwgaSBh
bSB1cGRhdGluZyB0aGUga2VybmVsIHZpYSBrZXhlYy4KPiA+IElmIGEgZ29vZCBrZXJuZWwgKDYu
Ni4zMCkgaXMgY29sZC1ib290ZWQsIHRoZW4sIGFsbCB0aGUga2VybmVscwo+ID4ga2V4ZWMnZCBm
cm9tIGl0IHdvcmsgdG9vLgo+ID4gSWYgYSBiYWQga2VybmVsICg2LjEwLjUpIGlzIGNvbGQtYm9v
dGVkLCB0aGVuIGEgNi42LjMwIGlzIGtleGVjJ2QgYW5kCj4gPiB0aGVuIHRoZSBzYW1lIDYuMTAu
NSBpcyBrZXhlYydkIGl0IGJlY29tZXMgYSBnb29kIG9uZS4KPgo+IEFkZGVkOgo+IEh1YW5nLUh1
YW5nIEJhbyA8aUBlaDUubWU+Cj4gTGludXMgV2FsbGVpaiA8bGludXMud2FsbGVpakBsaW5hcm8u
b3JnPgo+IFNhc2hhIExldmluIDxzYXNoYWxAa2VybmVsLm9yZz4KPgo+IFRoZSBmaXJzdCBvZmZl
bmRpbmcgY29tbWl0IGlzOgo+IDI5ZDgxMDFmYjk0NDI1NDQwNzdlNjhlMjc4MzlhMTk3OWY4NTYz
M2QgcGluY3RybDogcm9ja2NoaXA6IGZpeCBwaW5tdXgKPiBiaXRzIGZvciBSSzMzMjggR1BJTzIt
QiBwaW5zCj4KPiBJJ3ZlIGFsc28gdGVzdGVkIDYuMTAuNiB3aXRoIGl0IHJldmVydGVkIChhbmQK
PiA0NTY0NDdmZjFmZTNjMjhlMmZkN2I1N2E3OTY1MGY2MjI0NWM2NDI4IGFuZAo+IDcxMjdjNjhj
NzZmMTIwMzY3YjlhNTA1M2Y1MjRkZjBiNjAzZDRhNDggYXMgZGVwZW5kZW5jaWVzKSBhbmQgU1BJ
Cj4gd29ya3MgZmluZS4KClNvcnJ5IGZvciB0aGUgbm9pc2U6CnJldmVydGluZyBvbmx5IDI5ZDgx
MDFmYjk0NDI1NDQwNzdlNjhlMjc4MzlhMTk3OWY4NTYzM2QgbWFrZXMgaXQgd29yayBvbiA2LjEw
LjYuCklnbm9yZSB3aGF0IGkgc2FpZCBhYm91dCA0NTY0NDdmZjFmZTNjMjhlMmZkN2I1N2E3OTY1
MGY2MjI0NWM2NDI4IGFuZAo3MTI3YzY4Yzc2ZjEyMDM2N2I5YTUwNTNmNTI0ZGYwYjYwM2Q0YTQ4
LgoKPiBSZWdhcmRzLAo+ICAgVmljZW50ZS4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
