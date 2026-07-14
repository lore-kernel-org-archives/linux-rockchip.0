Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7736DC44508
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Jul 2026 13:52:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jF8f01ybQc7lnS0ZrDXlb4khMIIhCVFGZFHT+D5voAo=; b=gPGZzDHt59zRmZ
	L4VMonbNTmWsIm6q/pA8UqplD2S/pfG8OlhY3CGqhYhSYRYF/Gfivb2no0AKPVk+6/GMyNuCvlj+D
	ltYN2JB5i153yBwpTVzI68swKNKHIYVRK+9juCROyzosk8iqKbNRjM94ycSgmhb/LEqRDoD4S793/
	7hLsnoAtb4O+/4AKWClnRb87DtG2xDRuhFZfvJo2d8SxOjZfc0iyqTJZ3DJAYUw99ReE/o+OmdsdH
	yjDCrj9u4CKPbK1d2IhGfJVKvPrshE+0N3l5Up+yFXTjGUph++GrjGG8lB5JsUWY6RxEo1Tjh3qGs
	U/VEiMlBftYxJ4U+wOUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjdYd-0000000CF7w-3xUD;
	Tue, 14 Jul 2026 13:52:23 +0000
Received: from mail-ed1-x52a.google.com ([2a00:1450:4864:20::52a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjdYa-0000000CF6m-3eHb
	for linux-rockchip@lists.infradead.org;
	Tue, 14 Jul 2026 13:52:22 +0000
Received: by mail-ed1-x52a.google.com with SMTP id 4fb4d7f45d1cf-69c19a37eeaso8654665a12.2
        for <linux-rockchip@lists.infradead.org>; Tue, 14 Jul 2026 06:52:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1784037139; cv=none;
        d=google.com; s=arc-20260327;
        b=gKx2VkFkUeTsEt3VHbXot83Xady/MKoRfYYbAbc3pi4vGVjcpfhnFlELNvSD4V6qXC
         ljj8H4KBrNTwZd3fNiXPSRJHEpUAUl4wzRF10beE48DX2n6LLqGV33YpG7eXee5yZT5A
         YEgmajGMf6tPc6mHDWNaivtDM19mGcyBMgN30oDOqb2Pd+PaNlvIdeb9MLvlAZ5/Tln3
         Y7xiS28fW0cYuWhSeQtuPAnZroifOeFVww7M2su7US0HeRTFMxFWzD7D5Ip8mzlPEE1z
         A0kSvy1wvXOoZ5HlH0w9JTC35esRpBIx4JfqJzyGPEePu+W1iP4PC78kRUvMkS3YtL1T
         5GPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=xzEyIZnJ5i9yoA4AQ2U+oB8c8Dp6VZi2kI7cVkVCc/Q=;
        fh=oyOYq0A+nRqufo/NkNbVcHabr3IEvH1bCgDy5C5t75U=;
        b=lOt1PCncUkgYg/4NocCt6khmLNKcTYc0DpVR0XlZ+uaQ6ve6asuTyGkA0YDKwV16Lp
         3FGI0Um9r+tGsIEt4gk4UUUdBCLHK94zvMdI8gtIyTKl4uRFpqiaZVP25QD5ETAjx/gV
         An7vKo9Y9SJxvQDTy/xsav/Ju4EHm+Pek2cO4xQv/YYW1rilyd/xbYLEX8CVSCl+4jUG
         GjIJnP4TziiAOemgtEewJ0ya4Uwhzj3XkTovzXC5FAcy6AVmPc2ZhIS7p52FdJErH/kP
         D1l81JjUwTUQnVsSe0HKDZR82I/LQhEzOC8WqpbQgBww5HGuTrOx4Xf1x74bEBfZNviy
         pAWQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1784037139; x=1784641939; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=xzEyIZnJ5i9yoA4AQ2U+oB8c8Dp6VZi2kI7cVkVCc/Q=;
        b=IOq5rhrcpwIR7k3oZjgsBtJptEme1kObNCAbMxD8vSxKK/43REBkiVlA5xn2ZLfF3l
         vIIPylrm/iHVBS92XlVr6TBfGIKH6WcOpyPFeidTiuVabAo6Z595nSlhQMmMg4VL0WEJ
         FbJkiS+gS4BrjWxSu7wmL5ZG9yQR92xSnYE/crIr16yGEIkBPI/6oYQ+vqXdth4s+E0N
         hhiKSaqS1iDbHUJjJHSF6PDnOfj7fCkqvoxwcuSR1ezLZ9Vv12AjjDA9d97j4K68eGBf
         kbxoi9i5EKpsVB6sIQQl8pMbBIH7GIGqkP0ZnTUbz1Ci5nrK4dVDlt4nsED/l3Fm0hgw
         8Abw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784037139; x=1784641939;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=xzEyIZnJ5i9yoA4AQ2U+oB8c8Dp6VZi2kI7cVkVCc/Q=;
        b=jwoIqqEJFXh4MXcUlKxCWwTqnSct6XZeb8tEtaYGv7J9GskC1+45tdBkvGoDaPcxdq
         jMSmkuvoatY+EvJEc/bsjX5pFPBzaGBoKLDyi6+ySKPwF+pdHPeFTNPJW6XjZL+r994/
         bHeGj/D1ugF32Sv+zstQ8N8aK6VUZntU/vJpEyMd2Fq/8K9eFx2aW4qekXrhpKGdu3x8
         v35Zt+fH9MiUPoNwGrDke2VAb1ONoaAOqcvWd6Hi3AyF2N/zU1GL7BARYjbcTFRBQNkm
         E252CzHHLn5iPSYwzh7TEFd9rHiIINv2m8EI+eTF1BOL++z534lj5VesqOoZbSbE82LA
         WAfA==
X-Forwarded-Encrypted: i=1; AHgh+RpyIT5lI6YioCVIMz7tKUrAe3D6Xhs6W9ZjjwWKz3IRrlrwHRr4v8GUKMCuy2g/PvP4f0j6/YQy9aYJ+gTyqg==@lists.infradead.org
X-Gm-Message-State: AOJu0YzBLFDDHCdQC/ZvNxUSoE+ilNWXstNWgE7dTjpGxfgwzNU8SEL0
	3cnLcXTxokkc2TtJ44fJjiNqoIEIJYtn6nbz9hkzShtJsHrBxsLN9I3VgSunAk4PwTu/ACoIEg+
	lTc5w/5pymJ3oBwLyQ4rmxSvamGFWxKx5cYF4S1OMKA==
X-Gm-Gg: AfdE7cn17uaN+5YDk/CmTlz2qJIaRMwVuJSqwZH1PqteFt/uUrb8JX/WnP5gjoRRLMu
	wz/3/16lDhfvGhpFtej5g7RWn4AxrGUI1MRsGlA9a/QuSiAlCL18rg3JMQzeoxe0F/A5iwoNgqo
	xSuGRjwRHOxgJ3JCUx3PiXpTbAuXEA3NZ3gtOVj2A4/9nuNCTOBRvOBtMk+LIrWLYM7bEufDN+n
	yrx/BBFVOVG1aMEMxDQ8FhADEmCN/6f4W1F9Hj2V7WEbPK7cdwdsyJFn8Hlzc7JwDeWUgudEA==
X-Received: by 2002:a17:907:7b82:b0:c15:a444:5cf8 with SMTP id
 a640c23a62f3a-c1661879325mr186086066b.33.1784037138931; Tue, 14 Jul 2026
 06:52:18 -0700 (PDT)
MIME-Version: 1.0
References: <1777251433-110466-1-git-send-email-shawn.lin@rock-chips.com>
 <177918772002.269794.4450351142089498526.b4-ty@kernel.org>
 <CAKTNdwH_ZMQa-97h+tqdsWqXKtorkFF9wHAMn60-8ZGKuze_Mg@mail.gmail.com> <alY8y15JA0T5hoaY@vaman>
In-Reply-To: <alY8y15JA0T5hoaY@vaman>
From: Alexey Charkov <alchark@flipper.net>
Date: Tue, 14 Jul 2026 17:52:11 +0400
X-Gm-Features: AUfX_mwiN6qvZivfU0aMwyaQ7pYC-yePqVNsvly9oLdaKe_ucaolpG6uxpjwmfY
Message-ID: <CAKTNdwHq0eVO+r8GfSd+ULLQYMv8kHbgt7bQin=SLhx9QEqHLA@mail.gmail.com>
Subject: Re: [PATCH v3] phy: rockchip: naneng-combphy: Consolidate SSC configuration
To: Vinod Koul <vkoul@kernel.org>
Cc: Shawn Lin <shawn.lin@rock-chips.com>, linux-rockchip@lists.infradead.org, 
	linux-phy@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>, 
	Neil Armstrong <neil.armstrong@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260714_065220_942876_EB48DD4D 
X-CRM114-Status: GOOD (  20.81  )
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

T24gVHVlLCBKdWwgMTQsIDIwMjYgYXQgNTo0MuKAr1BNIFZpbm9kIEtvdWwgPHZrb3VsQGtlcm5l
bC5vcmc+IHdyb3RlOgo+Cj4gT24gMTQtMDctMjYsIDE2OjU4LCBBbGV4ZXkgQ2hhcmtvdiB3cm90
ZToKPiA+IE9uIFR1ZSwgTWF5IDE5LCAyMDI2IGF0IDI6NDjigK9QTSBWaW5vZCBLb3VsIDx2a291
bEBrZXJuZWwub3JnPiB3cm90ZToKPiA+ID4KPiA+ID4KPiA+ID4gT24gTW9uLCAyNyBBcHIgMjAy
NiAwODo1NzoxMyArMDgwMCwgU2hhd24gTGluIHdyb3RlOgo+ID4gPiA+IFRoZSBQQ0llIFNTQyBj
b25maWd1cmF0aW9uIGZvciB0aGUgUkszNTg4IGFuZCBSSzM1NzYgU29DcyByZXF1aXJlZAo+ID4g
PiA+IGFkZGl0aW9uYWwgdHVuaW5nIHdoaWNoIGlzIG1pc3NpbmcuIFdoZW4gYWRkaW5nIHRoZXNl
IHNhbWUgU1NDCj4gPiA+ID4gY29uZmlndXJhdGlvbnMgZm9yIGJvdGggb2YgdGhlc2UgdHdvIFNv
Q3MsIGFzIHdlbGwgYXMgdXBjb21pbmcKPiA+ID4gPiBwbGF0Zm9ybXMsIGl0J3Mgb2J2aW91cyB0
aGUgU1NDIHNldHVwIGNvZGUgd2FzIGxhcmdlbHkgZHVwbGljYXRlZAo+ID4gPiA+IGFjcm9zcyB0
aGUgcGxhdGZvcm0tc3BlY2lmaWMgY29uZmlndXJhdGlvbiBmdW5jdGlvbnMuIFRoaXMgYmVjb21l
cwo+ID4gPiA+IGhhcmRlciB0byBtYWludGFpbiBhcyBtb3JlIHBsYXRmb3JtcyBhcmUgYWRkZWQu
Cj4gPiA+ID4KPiA+ID4gPiBbLi4uXQo+ID4gPgo+ID4gPiBBcHBsaWVkLCB0aGFua3MhCj4gPiA+
Cj4gPiA+IFsxLzFdIHBoeTogcm9ja2NoaXA6IG5hbmVuZy1jb21icGh5OiBDb25zb2xpZGF0ZSBT
U0MgY29uZmlndXJhdGlvbgo+ID4gPiAgICAgICBjb21taXQ6IDBiMzFmMjk3NTU3ZmZmMDk0MTc2
OWU4MjU3MTk4MTUxYTBmYmU4YmYKPiA+Cj4gPiBUaGlzIGNvbW1pdCBicmVha3MgVVNCMyBvcGVy
YXRpb24gb24gUkszNTc2IChhdCBsZWFzdCBpbiBob3N0IG1vZGUpLAo+ID4gY2F1c2luZyBhbiBl
bmRsZXNzIGZsb29kIG9mIG1lc3NhZ2VzIGxpa2UgdGhpcyBldmVyeSBzZWNvbmQgaW4gZG1lc2c6
Cj4gPgo+ID4gdXNiIHVzYjItcG9ydDE6IENhbm5vdCBlbmFibGUuIE1heWJlIHRoZSBVU0IgY2Fi
bGUgaXMgYmFkPwo+ID4KPiA+IFVTQiAyLjAgcGFydCBlbnVtZXJhdGVzLCBidXQgVVNCIDMuMCBk
b2Vzbid0LiBUZXN0ZWQgb24gdHdvIGRpZmZlcmVudAo+ID4gZGV2aWNlcyBoYXZpbmcgYSBDb3Jl
Q2hpcHMgU0w2MzQxIFVTQiAyLjAvVVNCIDMuMCBodWIgb25ib2FyZAo+ID4gY29ubmVjdGVkIHRv
ICZ1c2JfZHJkMV9kd2MzLCBiaXNlY3RlZCB0byB0aGlzIGNvbW1pdC4KPiA+Cj4gPiBIYXMgdGhp
cyBiZWVuIHJlcG9ydGVkIHlldCwgb3Igc2hhbGwgSSBpbnZlc3RpZ2F0ZSBmdXJ0aGVyIHdoaWNo
IHBhcnQKPiA+IG9mIHRoZSBwYXRjaCBjYXVzZXMgdGhlIGJyZWFrYWdlPwo+Cj4gRmlyc3QgSSBo
ZWFyZCwgd291bGQgYmUgZ29vZCB0byBpbnZlc3RpZ2F0ZS4KPiBJIGNhbiByZXZlcnQgaWYgd2Ug
ZG9udCBmaW5kIGEgZml4IHNvb24uLi4KClRoYW5rcyBmb3IgY29uZmlybWluZyBWaW5vZC4gSSd2
ZSBwcmVsaW1pbmFyaWx5IGlkZW50aWZpZWQgdGhlIFNTQwpkaXJlY3Rpb24gc2V0dGluZyBhcyB0
aGUgY3VscHJpdDogYmVmb3JlIHRoZSByZWZhY3RvciBpdCB3YXMKdW5jb25kaXRpb25hbGx5IHNl
dCB0byBkb3dud2FyZCwgYWZ0ZXIgdGhlIHJlZmFjdG9yIGl0J3Mgb25seSBzZXQgd2hlbgoocHJp
di0+ZW5hYmxlX3NzYyksIHdoaWNoIGlzIG5vdCB0aGUgY2FzZSBmb3IgVVNCMyBvbiBSSzM1NzYg
KGhhdmVuJ3QKY2hlY2tlZCB0aGUgb3RoZXJzKS4KCldpbGwgZG91YmxlIGNoZWNrIGV2ZXJ5dGhp
bmcgYW5kIHNlbmQgYSBmaXggKGl0J3MganVzdCBtb3ZpbmcgdGhlCnByaXYtPmVuYWJsZV9zc2Mg
Y2hlY2sgMTAgbGluZXMgZG93biwgYmVmb3JlIGVuYWJsaW5nIFNTQyBidXQgYWZ0ZXIKc2V0dGlu
ZyB0aGUgZGlyZWN0aW9uKS4KCkJlc3QgcmVnYXJkcywKQWxleGV5CgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxp
c3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
