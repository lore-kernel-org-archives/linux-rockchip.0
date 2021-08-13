Return-Path: <SRS0=gOg0=NE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ED741C43216
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Aug 2021 15:46:39 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B7C9D60FBF
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Aug 2021 15:46:39 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org B7C9D60FBF
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=26mBW8sV79VTm3N5fcKcknPn89Ds1n54lWHjjS1Hqz0=; b=2MNugsCgYEqnUV8c3LjvNFFRTb
	/j6S27a0UnLaTygWWoEMOh7Aa+jLewtnreN1FemyLSEYuThOI/6XTESt1Gmd+JkKen4pKcmeLJEzV
	BHssnnFxvb0bIOzhCrNAWvF2MmE0Qrw6fltdYAY+hJBzXC6GYWAZiajdW4fpvN8gWOFAODVUlVYUT
	XAk8iEViwSymZTO3a8WO4v5Ns4UDWFsLg5mp3LCCdr2iqICpsi7iatOsIitYHXppr3AnQOVfs45V+
	SO9j81RIKxtyVsQihx2pqKMeK5CWP86UFAKmABlyS2SZGqTk1w6eB77AXfYj4AZ6QQiBa6Z9jmjsR
	xtV0EI6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mEZOF-00Czf1-O3; Fri, 13 Aug 2021 15:46:35 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mEZNz-00Czbs-Jd
 for linux-rockchip@lists.infradead.org; Fri, 13 Aug 2021 15:46:23 +0000
Received: by mail-wm1-x330.google.com with SMTP id
 h24-20020a1ccc180000b029022e0571d1a0so7186752wmb.5
 for <linux-rockchip@lists.infradead.org>; Fri, 13 Aug 2021 08:46:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=RGqYP/BN1Qfj8+Nm3t3v0K4q1x+QcZ7RN1PrsmUqieY=;
 b=Pvtg9Vmhd42TvM0kpWNs+0odqdTyMN5J7ijyasOeD+aIcPMwBs0qOHAtN2uuHtZw7G
 fCKTXtB0gafDUd2da+Ui9HETXJQnUp1QJ1GhOmfWw0QQq01ssbZmNWqddpilRtNoL3JP
 /GYbY1YCnaCa3HOg+hh1gT1KNsrpV4qX5ytivj8rGNcK0u5FAlNEobB8ooNE6UA7XVyX
 +ACLzUmfuFV6O7rNzoBXWEd0zO5DjqDZg/qBpOj0Ibi/E0Zr1JDoq5TSqyfQlgzr7MSI
 Rjk+m9dJEpfdE2Zq7rOfH66u4dj9LG/Mjjco/VxLSn+4Ze9LPsJrMx30eK5MIhahUzhE
 uXGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=RGqYP/BN1Qfj8+Nm3t3v0K4q1x+QcZ7RN1PrsmUqieY=;
 b=l1wvE2PZPNR1yQLm3Dp2N0pRntTLv1Gc4ZT9ZtCTQkIppPGJZy2omgo9KQeqFxvIJI
 tnOmMbIxFiO68teiv4aIy8X+DGMa4sFvmd9QqO0k6NUOell/g028QIOaqKY3tK3ppk0N
 R23XFbh779ATbm0FWn8Zv3yA5iHc/toE2vO7uUlSjGsjOnHVMytFRFhO3z9KlZTncaUQ
 6duWTyJYav/xV7fM5ZkcXsT1Dj28mhKQgK8DlG5kpEes2bwxrUO38PCxKFwn64xlMbHF
 ld4LczAFuAaMIzksF/A/2Y7vidHNeB3/nv+dYKWxaVlVBKpS0IYZB2Q53b6jD+wi2lEU
 j0Nw==
X-Gm-Message-State: AOAM530y40CAHXnqdAkWHObTfTR4v35tMJKBUzPQVWfwrGLeWmMUcpMn
 N6XDwzJHwqW2D5uQAXvtHoqNEQ==
X-Google-Smtp-Source: ABdhPJyfOCUjMkXHY+NPlZyvCpNVgUdfJ4jJ5vMEbOB2l5W8H8w6JCWMnJ9DhY0TXdEY/B3zvted+Q==
X-Received: by 2002:a1c:2905:: with SMTP id p5mr1152613wmp.146.1628869577924; 
 Fri, 13 Aug 2021 08:46:17 -0700 (PDT)
Received: from ?IPv6:2a01:e34:ed2f:f020:5df3:d0eb:3945:640d?
 ([2a01:e34:ed2f:f020:5df3:d0eb:3945:640d])
 by smtp.googlemail.com with ESMTPSA id y21sm1791206wma.38.2021.08.13.08.46.16
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 13 Aug 2021 08:46:17 -0700 (PDT)
Subject: Re: [PATCH v3] arm64: dts: rockchip: add thermal fan control to
 rockpro64
To: Peter Geis <pgwipeout@gmail.com>
Cc: Robin Murphy <robin.murphy@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, devicetree <devicetree@vger.kernel.org>,
 arm-mail-list <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
References: <20210730151727.729822-1-pgwipeout@gmail.com>
 <ad6d8025-977c-9ff2-81ff-a417df48231c@linaro.org>
 <893701da-ea17-00ab-5e31-c745051ac9b9@arm.com>
 <2b1050f2-0311-1871-820a-f876218894bc@linaro.org>
 <CAMdYzYptXpahbcdkPm1C9_aH2khNtjdZyBmckndcWLnrh259QQ@mail.gmail.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <141e29aa-d21d-31b8-9a81-015dcd63d24d@linaro.org>
Date: Fri, 13 Aug 2021 17:46:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <CAMdYzYptXpahbcdkPm1C9_aH2khNtjdZyBmckndcWLnrh259QQ@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210813_084619_690850_AE98601E 
X-CRM114-Status: GOOD (  19.96  )
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

T24gMTMvMDgvMjAyMSAxNzoxMCwgUGV0ZXIgR2VpcyB3cm90ZToKPiBPbiBGcmksIEF1ZyAxMywg
MjAyMSBhdCAxMDo1NCBBTSBEYW5pZWwgTGV6Y2Fubwo+IDxkYW5pZWwubGV6Y2Fub0BsaW5hcm8u
b3JnPiB3cm90ZToKPj4KPj4KPj4gSGkgUm9iaW4sCj4+Cj4+Cj4+IE9uIDEzLzA4LzIwMjEgMTU6
NTEsIFJvYmluIE11cnBoeSB3cm90ZToKPj4+IE9uIDIwMjEtMDgtMTMgMTM6NTksIERhbmllbCBM
ZXpjYW5vIHdyb3RlOgo+Pj4+IE9uIDMwLzA3LzIwMjEgMTc6MTcsIFBldGVyIEdlaXMgd3JvdGU6
Cj4+Pj4+IFRoZSByb2NrcHJvNjQgaGFkIGEgZmFuIG5vZGUgc2luY2UKPj4+Pj4gY29tbWl0IDU4
ODJkNjVjMTY5MSAoImFybTY0OiBkdHM6IHJvY2tjaGlwOiBBZGQgUFdNIGZhbiBmb3IgUm9ja1By
bzY0IikKPj4+Pj4gaG93ZXZlciBpdCB3YXMgbmV2ZXIgdGllZCBpbnRvIHRoZSB0aGVybWFsIGRy
aXZlciBmb3IgYXV0b21hdGljIGNvbnRyb2wuCj4+Pj4+Cj4+Pj4+IEFkZCB0aGUgbGlua3MgdG8g
dGhlIHRoZXJtYWwgbm9kZSB0byBwZXJtaXQgdGhlIGtlcm5lbCB0byBoYW5kbGUgdGhpcwo+Pj4+
PiBhdXRvbWF0aWNhbGx5Lgo+Pj4+PiBCb3Jyb3dlZCBmcm9tIHRoZSAocmszMzk5LWtoYWRhcy1l
ZGdlLmR0c2kpLgo+Pj4+Pgo+Pj4+PiBTaWduZWQtb2ZmLWJ5OiBQZXRlciBHZWlzIDxwZ3dpcGVv
dXRAZ21haWwuY29tPgo+Pgo+PiBbIC4uLiBdCj4+Cj4+Pj4+ICAgKyZjcHVfdGhlcm1hbCB7Cj4+
Pj4+ICsgICAgdHJpcHMgewo+Pj4+PiArICAgICAgICBjcHVfd2FybTogY3B1X3dhcm0gewo+Pj4+
PiArICAgICAgICAgICAgdGVtcGVyYXR1cmUgPSA8NTUwMDA+Owo+Pj4+PiArICAgICAgICAgICAg
aHlzdGVyZXNpcyA9IDwyMDAwPjsKPj4+Pj4gKyAgICAgICAgICAgIHR5cGUgPSAiYWN0aXZlIjsK
Pj4+Pj4gKyAgICAgICAgfTsKPj4+Pj4gKwo+Pj4+PiArICAgICAgICBjcHVfaG90OiBjcHVfaG90
IHsKPj4+Pj4gKyAgICAgICAgICAgIHRlbXBlcmF0dXJlID0gPDY1MDAwPjsKPj4+Pj4gKyAgICAg
ICAgICAgIGh5c3RlcmVzaXMgPSA8MjAwMD47Cj4+Pj4+ICsgICAgICAgICAgICB0eXBlID0gImFj
dGl2ZSI7Cj4+Pj4+ICsgICAgICAgIH07Cj4+Pj4+ICsgICAgfTsKPj4+Pj4gKwo+Pj4+Cj4+Pj4g
V2h5IHR3byB0cmlwIHBvaW50cyA/Cj4+Pj4KPj4+PiBXaHkgbm90IG9uZSBmdW5jdGlvbmluZyB0
ZW1wZXJhdHVyZSBhbmQgbm8gbG93ZXIgLyB1cHBlciBsaW1pdHMgZm9yIHRoZQo+Pj4+IGNvb2xp
bmcgbWFwcyA/Cj4+Pgo+Pj4gQ2VydGFpbmx5IHdoZW4gSSBmaXJzdCBkaWQgdGhpcyBmb3IgTmFu
b1BDLVQ0LCBJSVJDIGl0IHdhcyB0byBhdm9pZCB0aGUKPj4+IGZhbiByYW1waW5nIHVwIHRvbyBl
YWdlcmx5LCBzaW5jZSBsZXZlbCAxIGZvciBteSBmYW4gaXMgZWZmZWN0aXZlbHkKPj4+IHNpbGVu
dCBidXQgc3RpbGwgY29vbHMgZW5vdWdoIHRvIGxldCBhIG1vZGVyYXRlIGxvYWQgZXZlbnR1YWxs
eSBzZXR0bGUKPj4+IHRvIGEgc3RlYWR5IHN0YXRlIGJlbG93IHRoZSBzZWNvbmQgdHJpcC4KPiAK
PiBUaGF0J3MgdGhlIHNhbWUgaXNzdWUgSSBoYWQgb24gdGhlIHJvY2twcm82NC4KPiAKPj4KPj4g
VGhhbmtzIGZvciB5b3VyIGFuc3dlci4KPj4KPj4gV2hhdCB3b3VsZCBiZSB0aGUgZ292ZXJub3Ig
Zm9yIHRoaXMgc2V0dXAgPwo+Pgo+IAo+IFRoZSBkZWZhdWx0IGdvdmVybm9yIHdoZW4gdXNpbmcg
YXJtNjRfZGVmY29uZmlnIGlzIHN0ZXBfd2lzZS4KCk9rLCB0aGFua3MKCgotLSAKPGh0dHA6Ly93
d3cubGluYXJvLm9yZy8+IExpbmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBB
Uk0gU29DcwoKRm9sbG93IExpbmFybzogIDxodHRwOi8vd3d3LmZhY2Vib29rLmNvbS9wYWdlcy9M
aW5hcm8+IEZhY2Vib29rIHwKPGh0dHA6Ly90d2l0dGVyLmNvbS8jIS9saW5hcm9vcmc+IFR3aXR0
ZXIgfAo8aHR0cDovL3d3dy5saW5hcm8ub3JnL2xpbmFyby1ibG9nLz4gQmxvZwoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFp
bGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
