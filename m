Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25649C19F32
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Mar 2025 01:00:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:References:
	In-Reply-To:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=75Ifqq07asF8ttCsirxlrykz7fS0Afaf0UDZHkeEG8g=; b=H5tniRjC8W+flJ
	Jz34R0Zyo/kly8pOvQO+sktLEcWEXrBByP/L+bRVChGrD69YS80GENHNmjJj/kQGOCLyuQlGBoP54
	mqDBHTd6eTw8DDDtotNOkOsK2vA3ew+dv+0j2rhnnPhKQKtzYWcd0R/uMRIFgxHuGcUFv49dM4z1o
	cz2ezBQhbQrF+sNN+kfs/+PPOQNX01a0ORucOG0/M/YfMw0GeMmOWw4Tr7YTISntqnsA0iHrjERXf
	xc26vPB1Goq8BTIqPmI+P+xLC0oZJ5oXs//fWK0zm4QiYq1zqIEO5gjK2/grTwwUpG0TRu7HXbx+m
	of2MnGbKlPtXb8SehQJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tpzbJ-00000009kMw-32hs;
	Thu, 06 Mar 2025 01:00:37 +0000
Received: from m16.mail.163.com ([220.197.31.5])
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tpzaS-00000009kFp-38lz;
	Thu, 06 Mar 2025 00:59:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:Subject:Content-Type:MIME-Version:
	Message-ID; bh=PMDmUXSIdq2f/nNiLc3wTT/iCwj2VpHuoogdeFCSGXI=; b=h
	8YMtUapnYGyIdc6KXijq7eDjxK5Fzb6FN58zHAcyKJi9X6I7AfreyRhAF6tyk2XN
	dXyyAMfZIC3Jw8RC6K7iymB6vBLMGv+B0oCvojWZtKtZzwSwUnvwWVdIdBebFjdw
	8KqLAuQ2JmcKMtbcjuhvln2pg6VEAXA3OcGCEHKrA0=
Received: from andyshrk$163.com ( [103.29.142.67] ) by
 ajax-webmail-wmsvr-40-118 (Coremail) ; Thu, 6 Mar 2025 08:59:13 +0800 (CST)
X-Originating-IP: [103.29.142.67]
Date: Thu, 6 Mar 2025 08:59:13 +0800 (CST)
From: "Andy Yan" <andyshrk@163.com>
To: "Piotr Oniszczuk" <piotr.oniszczuk@gmail.com>
Cc: heiko@sntech.de, neil.armstrong@linaro.org,
	sebastian.reichel@collabora.com, devicetree@vger.kernel.org,
	hjc@rock-chips.com, mripard@kernel.org, linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org, yubing.zhang@rock-chips.com,
	dri-devel@lists.freedesktop.org,
	"Andy Yan" <andy.yan@rock-chips.com>, krzk+dt@kernel.org,
	robh@kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re:Re: [PATCH 0/6] Add support for RK3588 DisplayPort Controller
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.14 build 20240801(9da12a7b)
 Copyright (c) 2002-2025 www.mailtech.cn 163com
In-Reply-To: <75189787-28E1-4FC2-8E10-4960B3877A6F@gmail.com>
References: <25401bfa.291d.19564244e54.Coremail.andyshrk@163.com>
 <75189787-28E1-4FC2-8E10-4960B3877A6F@gmail.com>
X-NTES-SC: AL_Qu2fA/6ZvU8u5SefbOkfmkcVgOw9UcO5v/Qk3oZXOJF8jDDp2ycwUUJSDXLaweO0FQ+OmgmGXTtC9/R7f4VTVaQNWrfgx5ouyclyVgmtq3rycg==
MIME-Version: 1.0
Message-ID: <28b0d3fc.bb3.19568f6b5f8.Coremail.andyshrk@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: digvCgC3FURh88hnLg13AA--.6915W
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbBkBkIXmfI596+CwACs+
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250305_165945_165351_9396E0AF 
X-CRM114-Status: UNSURE (   6.12  )
X-CRM114-Notice: Please train this message.
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

CkhpIFBpb3RyLAoK5ZyoIDIwMjUtMDMtMDUgMjE6NTY6MTLvvIwiUGlvdHIgT25pc3pjenVrIiA8
cGlvdHIub25pc3pjenVrQGdtYWlsLmNvbT4g5YaZ6YGT77yaCj4KPgo+PiBXaWFkb21vxZvEhyBu
YXBpc2FuYSBwcnpleiBBbmR5IFlhbiA8YW5keXNocmtAMTYzLmNvbT4gdyBkbml1IDUgbWFyIDIw
MjUsIG8gZ29kei4gMDM6MzA6Cj4+IAo+Pj4gCj4+IAo+PiBJIG9ubHkgc2VlIHRoZSBIRE1JIGNv
bm5lY3RvciBmcm9tIHlvdXIgZHJpL3N0YXRlIDsgc28gaXQgYXBwZWFycyB0aGUgRFAgZHJpdmVy
IGhhc24ndCBiZWVuIHN1Y2Nlc3NmdWxseQo+PiBpbml0aWFsaXplZO+8iEkgdGhpbmsga2VybmVs
IGRtZXNnIGNhbiB0ZWxsIHRoYXTvvIkuIAo+PiBIYXZlIHlvdSBlbmFibGVkIENPTkZJR19ST0NL
Q0hJUF9EV19EUCA/IFRoaXMgaXMgbmVlZGVkLgo+PiAKPgo+Cj5BbmR5LAo+Cj5EbyB5b3UgbWVh
biBDT05GSUdfUk9DS0NISVBfRFdfRFAgb3IgQ09ORklHX0RSTV9EV19EUCA/Cj4KPklmIENPTkZJ
R19EUk1fRFdfRFAgLSB0aGVuIHllcyAtIGkgaGF2ZSBpdDogaHR0cHM6Ly9naXRodWIuY29tL3dh
cnBtZS9taW5pbXl0aDIvYmxvYi8yZTI2Nzg0MmIxMDMzYmJjNGMyYzVkODBjMTc1NmExNDJlMzQ3
Y2M1L3NjcmlwdC9rZXJuZWwvbGludXgtNi4xNC9maWxlcy9saW51eC02LjE0LWFybTY0LWFybXY4
LmNvbmZpZyNMNTAyNAo+Cj5LZXJuZWwgZG1lc2c6IGh0dHBzOi8vdGVybWJpbi5jb20vdWl1cAoK
CkJvdGggb2YgdGhlIHR3byBjb25maWcgb3B0aW9ucyBzaG91bGQgYmUgZW5hYmxlZC4KYW5keUBQ
cm80ODA6fi9Xb3JrU3BhY2UvbGludXgtbmV4dCQgcmcgRFdfRFAgLmNvbmZpZwo0MDQ0OkNPTkZJ
R19ST0NLQ0hJUF9EV19EUD15CjQyMTg6Q09ORklHX0RSTV9EV19EUD15CgpBbmQgaWYgZHcgZHAg
ZHJpdmVyIGJvb3RzIHN1Y2Nlc3MsIHlvdSB3aWxsIHNlZSBkbWVzZyBsaWtlIGJlbGxvdzoKCiBb
ICAgIDEuMDU4NjM0XSBhcm0tc21tdS12MyBmYzkwMDAwMC5pb21tdTogbXNpX2RvbWFpbiBhYnNl
bnQgLSBmYWxsaW5nIGJhY2sgdG8gd2lyZWQgaXJxcwpbICAgIDEuMDYyNDU4XSByb2NrY2hpcC12
b3AyIGZkZDkwMDAwLnZvcDogQWRkaW5nIHRvIGlvbW11IGdyb3VwIDAKWyAgICAxLjA2NzkwOF0g
cm9ja2NoaXAtZHJtIGRpc3BsYXktc3Vic3lzdGVtOiBib3VuZCBmZGQ5MDAwMC52b3AgKG9wcyB2
b3AyX2NvbXBvbmVudF9vcHMpClsgICAgMS4wNjg5ODFdIHJvY2tjaGlwLWRybSBkaXNwbGF5LXN1
YnN5c3RlbTogYm91bmQgZmRlNjAwMDAuZHAgKG9wcyBkd19kcF9yb2NrY2hpcF9jb21wb25lbnRf
b3BzKQpbICAgIDEuMDcwMTMzXSBkd2hkbWlxcC1yb2NrY2hpcCBmZGU4MDAwMC5oZG1pOiByZWdp
c3RlcmVkIERlc2lnbldhcmUgSERNSSBRUCBJMkMgYnVzIGRyaXZlcgpbICAgIDEuMDcwODU5XSBy
b2NrY2hpcC1kcm0gZGlzcGxheS1zdWJzeXN0ZW06IGJvdW5kIGZkZTgwMDAwLmhkbWkgKG9wcyBk
d19oZG1pX3FwX3JvY2tjaGlwX29wcykKWyAgICAxLjA3MjEwM10gW2RybV0gSW5pdGlhbGl6ZWQg
cm9ja2NoaXAgMS4wLjAgZm9yIGRpc3BsYXktc3Vic3lzdGVtIG9uIG1pbm9yIDAKWyAgICAxLjA4
MDE5MV0gbG9vcDogbW9kdWxlIGxvYWRlZAoKQnV0IEkganVzdCBzZWUgaGRtaSAgZHJpdmVyIGJv
b3RzIGZyb20geW91ciBkbWVzZy4KCj4KPgo+Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
