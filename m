Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C69CC369CB
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Apr 2025 16:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OqRefp1hfYlQv59Uc+4261Wu5Hj+VehoYMFMI/0F9/M=; b=t1ErP8bdXdLIxP
	K2nb3t+Mw8dvMFJ3b3ucttwBWz8d1fwYhaYIPWZ+iVhuMGvjUcrjWNoZBVvEm0kQN5mQVonLKmmnN
	qSARfRqOJVDCFwTJG+gaSP9qcxX+bnZeQTCg8EI+Cd0FVvfDAqplk5FRP6wNJsNBSYWeGZEyn+mZZ
	M+x3IqMUjw8NEBpi/tFRQb8IpiGUxuPVPdvRCTtQR2mR7GRwy3/zqJ+Jjtlx+8pxWkKc4On+2vVvL
	Tp+cph575+HK5GjQhxJWPKV2WRafQ2B4alM4GGBfyVeWLzskh0nL2ZNua3mmwWCjaYan7Q6jhi500
	X1tXlcCf+OULBCWL/KmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u8iWs-00000002IGj-1m8j;
	Sat, 26 Apr 2025 16:37:26 +0000
Received: from mail-pj1-x1029.google.com ([2607:f8b0:4864:20::1029])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u8iWp-00000002IGF-2ZPG
	for linux-rockchip@lists.infradead.org;
	Sat, 26 Apr 2025 16:37:25 +0000
Received: by mail-pj1-x1029.google.com with SMTP id 98e67ed59e1d1-301a4d5156aso4577079a91.1
        for <linux-rockchip@lists.infradead.org>; Sat, 26 Apr 2025 09:37:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745685442; x=1746290242; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=sBO+yo8qtG1t8OuviuDRDUOzweQIXzPrJJJJLil9oPU=;
        b=K0yX+wfHo+hOtdXln51T7SVihuL1qtI2Qgm157FkdVzyb+N4FArcFFyqQQbEcovUD8
         fBEG3bmRt989S0E5tzpvVUYBbkt5cICaGiACbhmjQNT/cXpjhBQYpufR0i9cyvv+7unh
         lOjKOUhZ12uIylfhRev7p7AbRClXxuNVW7DoK3nqEdqTXAnw3hF8TJwoHvUMzwWufaAH
         DARyXszkZ8g4gZNm5kP2MFDiCIvMHuHtQsBjEJ7NSkZ5ZdBy9TpEi4ojSw2hdFDYeVsf
         jkVBbur8yeqf51+tvA0HWXwnEFFAKig60eUZT+N/r96iWtwa8ChLQYkZgZja5XE/J6eK
         J4Rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745685442; x=1746290242;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sBO+yo8qtG1t8OuviuDRDUOzweQIXzPrJJJJLil9oPU=;
        b=S3nUJ7HKxgShM9knkPKOsAl2AUBhB1FPRSeXWYBU/XC6mCc9FzDRC2Zv+++Nm4MQJi
         wjKLBVsk/U53urBYAMWbxLeW0CP/V2I4YR5/OaMPmmsHsCoA9tT7i/CpA+7Sazde/kO0
         YAiVR5Q0qX0Gf/E7DyH5NNp6Y7Hp9kupfaKHQ6HKqQoXBMmhgXyVQSp/6EGvEPBynO94
         7rVAsD8m5w64rwXWFGNkmZO8uPeUu9u7B90HAYAg/xAw18l3I98lmDGV94eW0gCu4KJS
         esipXTvg20+cQ/tBKrnN0B6v5wm/hEBEJ9gkC655CInJMUeemqB77KCuRCcamesfSe3w
         ftzQ==
X-Forwarded-Encrypted: i=1; AJvYcCVcytN7BRxX77/MZkwW50UmxmgnT55e/R4xOigGmEmeuBqyYNxpOsMB1xhv6i3OI8gev+ixKADTtuEBKjxEfA==@lists.infradead.org
X-Gm-Message-State: AOJu0YzMbUpehDZ2EpoQMA63unpJCzjuxEsWuClQ8iNWgUcH7rP1Dn6n
	fFaTurVNyKF+ydoJT1uN9fftBIv/WjM6GQqYUBQcl5UqLasz0hh9M/FFdec6cQ==
X-Gm-Gg: ASbGnctbZNu9ddVGIBqKl5QmqEKwqOZtW4XerZ7D/VlG5vhXIxCM6BRXN5qGk3cSk+U
	nZFhyWiFSxvbMDDzZMMsxiZb3navaLIjlf7BX4CEHBCqmts0zdeskz95uyl/f2dW7mS29Ky8Vpd
	VXR2NW91PuhfzNDE7UvH8+ux88kRGF4ThqRJhrwGWAu4rbmKodG6SAAzWqQxetLr2LxupLiw1eJ
	9+4jq2gPTJZKlk9rcjpzw74KXot4Dg1+4XimLEHDKNy4d2Wrs0/ArEDV8yWTUBpJK5OwVTHhKTP
	4FnEC41XkqP2HU2B/zrkHKy755ectOMpTOaJ9ry9hIddmuS2JKXFbF1Vas3wdm8=
X-Google-Smtp-Source: AGHT+IFXKMHWf1SVJasg0DZUo4ESWUazBYbWUy8Iz3f3K02XzQJmHwLbqw703263vdImT6mLuKRF2g==
X-Received: by 2002:a17:90b:57c8:b0:2fe:8c22:48b0 with SMTP id 98e67ed59e1d1-309f7dfddc6mr9788329a91.15.1745685442491;
        Sat, 26 Apr 2025 09:37:22 -0700 (PDT)
Received: from thinkpad ([120.60.143.241])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-309ef097fa5sm5580351a91.23.2025.04.26.09.37.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 26 Apr 2025 09:37:22 -0700 (PDT)
Date: Sat, 26 Apr 2025 22:07:17 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, 
	Niklas Cassel <cassel@kernel.org>, linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v4 2/3] PCI: dw-rockchip: Enable L0S capability
Message-ID: <zrgc3s7lb2zrcjlfirf3lvldslxhc4khu2xkxdhtixowhspyla@krzj4rl46kez>
References: <1744850111-236269-1-git-send-email-shawn.lin@rock-chips.com>
 <1744850111-236269-2-git-send-email-shawn.lin@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1744850111-236269-2-git-send-email-shawn.lin@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250426_093724_187372_F72B716B 
X-CRM114-Status: GOOD (  24.92  )
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

T24gVGh1LCBBcHIgMTcsIDIwMjUgYXQgMDg6MzU6MTBBTSArMDgwMCwgU2hhd24gTGluIHdyb3Rl
Ogo+IEwwUyBjYXBhYmlsaXR5IGlzbid0IGVuYWJsZWQgb24gYWxsIFNvQ3MgYnkgZGVmYXVsdCwg
c28gZW5hYmxpbmcgaXQKPiBpbiBvcmRlciB0byBtYWtlIEFTUE0gTDBTIHdvcmsgb24gUm9ja2No
aXAgcGxhdGZvcm1zLiBXZSBoYXZlIGJlZW4KPiB0ZXN0aW5nIGl0IGZvciBxdWl0ZSBhIGxvbmcg
dGltZSBhbmQgZm91bmQgdGhlIGRlZmF1bHQgRlRTIG51bWJlcgo+IHByb3ZpZGVkIGJ5IERXQyBj
b3JlIGRvZXNuJ3Qgd29yayBzdGFibGUgYW5kIG1ha2UgTFRTU00gc3dpdGNoIGJldHdlZW4KPiBM
MFMgYW5kIFJlY292ZXJ5LCBsZWFkaW5nIHRvIGxvbmcgZXhpdCBsYXRlbmN5LCBldmVuIGZhaWwg
dG8gbGluawo+IHNvbWV0aW1lcy4gU28gb3ZlcnJpZGUgaXQgdG8gdGhlIG1heCAyNTUgd2hpY2gg
c2VlbXMgd29yayBmaW5lIHVuZGVyIHRlc3QKPiBmb3IgYm90aCBQSFlzIHVzZWQgYnkgUm9ja2No
aXAgcGxhdGZvcm1zLgo+IAo+IFNpZ25lZC1vZmYtYnk6IFNoYXduIExpbiA8c2hhd24ubGluQHJv
Y2stY2hpcHMuY29tPgoKUmV2aWV3ZWQtYnk6IE1hbml2YW5uYW4gU2FkaGFzaXZhbSA8bWFuaXZh
bm5hbi5zYWRoYXNpdmFtQGxpbmFyby5vcmc+CgotIE1hbmkKCj4gUmV2aWV3ZWQtYnk6IE5pa2xh
cyBDYXNzZWwgPGNhc3NlbEBrZXJuZWwub3JnPgo+IC0tLQo+IAo+IENoYW5nZXMgaW4gdjQ6Cj4g
LSBBZGQgTmlrbGFzJ3MgcmV2aWV3IHRhZwo+IAo+IENoYW5nZXMgaW4gdjM6Cj4gLSBBZGQgcm9j
a2NoaXBfcGNpZV9lbmFibGVfbDBzKCkgYW5kIGNhbGxlZCBmcm9tIC5pbml0KCkKPiAKPiBDaGFu
Z2VzIGluIHYyOgo+IC0gTW92ZSBuX2Z0cyB0byBwcm9iZSBmdW5jdGlvbgo+IC0gcmV3cml0ZSB0
aGUgY29tbWl0IG1lc3NhZ2UKPiAKPiAgZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1k
dy1yb2NrY2hpcC5jIHwgMjMgKysrKysrKysrKysrKysrKysrKysrKysKPiAgMSBmaWxlIGNoYW5n
ZWQsIDIzIGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9wY2kvY29udHJv
bGxlci9kd2MvcGNpZS1kdy1yb2NrY2hpcC5jIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2Mv
cGNpZS1kdy1yb2NrY2hpcC5jCj4gaW5kZXggMjFkYzk5Yy4uZTQ1MTljMCAxMDA2NDQKPiAtLS0g
YS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLWR3LXJvY2tjaGlwLmMKPiArKysgYi9k
cml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLWR3LXJvY2tjaGlwLmMKPiBAQCAtMTgyLDYg
KzE4MiwyMSBAQCBzdGF0aWMgaW50IHJvY2tjaGlwX3BjaWVfbGlua191cChzdHJ1Y3QgZHdfcGNp
ZSAqcGNpKQo+ICAJcmV0dXJuIDA7Cj4gIH0KPiAgCj4gK3N0YXRpYyB2b2lkIHJvY2tjaGlwX3Bj
aWVfZW5hYmxlX2wwcyhzdHJ1Y3QgZHdfcGNpZSAqcGNpKQo+ICt7Cj4gKwl1MzIgY2FwLCBsbmtj
YXA7Cj4gKwo+ICsJLyogRW5hYmxlIEwwUyBjYXBhYmlsaXR5IGZvciBhbGwgU29DcyAqLwo+ICsJ
Y2FwID0gZHdfcGNpZV9maW5kX2NhcGFiaWxpdHkocGNpLCBQQ0lfQ0FQX0lEX0VYUCk7Cj4gKwlp
ZiAoY2FwKSB7Cj4gKwkJbG5rY2FwID0gZHdfcGNpZV9yZWFkbF9kYmkocGNpLCBjYXAgKyBQQ0lf
RVhQX0xOS0NBUCk7Cj4gKwkJbG5rY2FwIHw9IFBDSV9FWFBfTE5LQ0FQX0FTUE1fTDBTOwo+ICsJ
CWR3X3BjaWVfZGJpX3JvX3dyX2VuKHBjaSk7Cj4gKwkJZHdfcGNpZV93cml0ZWxfZGJpKHBjaSwg
Y2FwICsgUENJX0VYUF9MTktDQVAsIGxua2NhcCk7Cj4gKwkJZHdfcGNpZV9kYmlfcm9fd3JfZGlz
KHBjaSk7Cj4gKwl9Cj4gK30KPiArCj4gIHN0YXRpYyBpbnQgcm9ja2NoaXBfcGNpZV9zdGFydF9s
aW5rKHN0cnVjdCBkd19wY2llICpwY2kpCj4gIHsKPiAgCXN0cnVjdCByb2NrY2hpcF9wY2llICpy
b2NrY2hpcCA9IHRvX3JvY2tjaGlwX3BjaWUocGNpKTsKPiBAQCAtMjMxLDYgKzI0Niw4IEBAIHN0
YXRpYyBpbnQgcm9ja2NoaXBfcGNpZV9ob3N0X2luaXQoc3RydWN0IGR3X3BjaWVfcnAgKnBwKQo+
ICAJaXJxX3NldF9jaGFpbmVkX2hhbmRsZXJfYW5kX2RhdGEoaXJxLCByb2NrY2hpcF9wY2llX2lu
dHhfaGFuZGxlciwKPiAgCQkJCQkgcm9ja2NoaXApOwo+ICAKPiArCXJvY2tjaGlwX3BjaWVfZW5h
YmxlX2wwcyhwY2kpOwo+ICsKPiAgCXJldHVybiAwOwo+ICB9Cj4gIAo+IEBAIC0yNzEsNiArMjg4
LDggQEAgc3RhdGljIHZvaWQgcm9ja2NoaXBfcGNpZV9lcF9pbml0KHN0cnVjdCBkd19wY2llX2Vw
ICplcCkKPiAgCXN0cnVjdCBkd19wY2llICpwY2kgPSB0b19kd19wY2llX2Zyb21fZXAoZXApOwo+
ICAJZW51bSBwY2lfYmFybm8gYmFyOwo+ICAKPiArCXJvY2tjaGlwX3BjaWVfZW5hYmxlX2wwcyhw
Y2kpOwo+ICsKPiAgCWZvciAoYmFyID0gMDsgYmFyIDwgUENJX1NURF9OVU1fQkFSUzsgYmFyKysp
Cj4gIAkJZHdfcGNpZV9lcF9yZXNldF9iYXIocGNpLCBiYXIpOwo+ICB9Owo+IEBAIC01OTksNiAr
NjE4LDEwIEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfcGNpZV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1f
ZGV2aWNlICpwZGV2KQo+ICAJcm9ja2NoaXAtPnBjaS5vcHMgPSAmZHdfcGNpZV9vcHM7Cj4gIAly
b2NrY2hpcC0+ZGF0YSA9IGRhdGE7Cj4gIAo+ICsJLyogRGVmYXVsdCBOX0ZUUyB2YWx1ZSAoMjEw
KSBpcyBicm9rZW4sIG92ZXJyaWRlIGl0IHRvIDI1NSAqLwo+ICsJcm9ja2NoaXAtPnBjaS5uX2Z0
c1swXSA9IDI1NTsgLyogR2VuMSAqLwo+ICsJcm9ja2NoaXAtPnBjaS5uX2Z0c1sxXSA9IDI1NTsg
LyogR2VuMisgKi8KPiArCj4gIAlyZXQgPSByb2NrY2hpcF9wY2llX3Jlc291cmNlX2dldChwZGV2
LCByb2NrY2hpcCk7Cj4gIAlpZiAocmV0KQo+ICAJCXJldHVybiByZXQ7Cj4gLS0gCj4gMi43LjQK
PiAKPiAKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K61
4K6u4K+NCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==
