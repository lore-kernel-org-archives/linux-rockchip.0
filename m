Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2851C44501
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Jul 2026 21:40:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/a8tHiXVW1Qs5qbTUgFUXgy/DjY/V053B2Bq5zAkLJk=; b=AsQ/duZEa+2eTi
	tuKrb6y/oOcaFWBXmKlFskwaOwXlc+i8sLNTwe5EJ3eXzbROtPbJo1fI5YX+tVFLraSmI8D+KKR4y
	qd8K+vEwTiEVrK4QMqFh2WAt1W5/TvH6rfwmt4gECqL1lFzM9I8rIXGow0USJVlKqiM1ywZrY9ftp
	HVvJwRlMQy4Y5AjUX2LcG2lOy57uY64uNk3Kpmzo4rols1+rUvTzm5+Qf5AoBG5GW1RvK8Sl/cXUp
	KsQgoyJu4+DFMpucELkR2hG7IvDdcOxubF7kxYCXWjmGqIBoeQSOLIu4OWEAbFSLupTNV+Rrl+oF2
	mHvCvVjQHhUsnLmfrtmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wk7Kd-0000000Fyfv-22F1;
	Wed, 15 Jul 2026 21:39:55 +0000
Received: from mail-ej2-x00.google.com ([2a00:1450:4864:34::])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wk7Kb-0000000FyfB-1Wev
	for linux-rockchip@lists.infradead.org;
	Wed, 15 Jul 2026 21:39:54 +0000
Received: by mail-ej2-x00.google.com with SMTP id a640c23a62f3a-c16772d888aso73041666b.1
        for <linux-rockchip@lists.infradead.org>; Wed, 15 Jul 2026 14:39:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1784151591; cv=none;
        d=google.com; s=arc-20260327;
        b=TSM7IAl2RBnEQoeZMA5bSXn5/xqMnAHWnIz/a7WFrP9iWG2j2pGUV1s+fL1+1sppzp
         h1h+nRRPWSLM277007TVk2hz36sMqlo0cefikznbLgeZIXclNrfvgDbRPsi9J09jXsmf
         zD4I89bHPOWwx3egK7wkVTr2pB8WsgVVrtFylCYNsgg3uw6N40+e36F1e6h1SIN2m4QY
         yaBAAQ6Zh415rOXtcOIIBSJfqvxV0hNc0gQsRZSF7bLiL2oSUZVujoy5ShtfpyDCnkU+
         aySRr87Hn4tNX/UN8LtPvTMwq1gKLXMRM+tX4F5xGNb8NdxJvqoqILD2Ayk4/vPuIT/v
         DcQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=ocL48N0azq4XQo6lTJ0uGSQUcUQGguK7kbKdujwlOjs=;
        fh=kYaeaP/nJwySGdRBVmT1/QPzBl26mEYCeo1lkbx944s=;
        b=cBTQCimThAY/bZz6y5hrtaF54DgBKiep6uKzrreFCrZtg5wtyAaQMMnKLIAuvcQpOr
         9SYsT6KrG7C3NAGgTYfLvwstiruWegQSxRmyTR1MKiYfyg1tGVG50Hi+c1IE/dVc+ou9
         JNzG9Xeve+X9WdCv8YrnyZfeqM0/epJ4ihBrm7wAOygEMXi/uWtLlt+ibDN6wPtH4iQE
         vkvA/RkOJGA4QahY1tof9iZQ6de3DZHBK01Ht+S7AGWdbt2IYMgNkId9NpVez6E5OPa+
         o5ve8chw6L5djk2qCPFl+W+//Yly6tW0LPC1HZQsTdtkZ1PnK9V4sh97iqxph9V4TCoe
         l0Qw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784151591; x=1784756391; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=ocL48N0azq4XQo6lTJ0uGSQUcUQGguK7kbKdujwlOjs=;
        b=Qbb2wcu0wpSDe3PMbhBCdqjSwEm1uPQyojZ1zwN1nDDjCrIHXMVQlsnu+94FAVhyyN
         eJoHJQ05npG/KZmLkPANJk5AuN5A59uYCdxPD8JXw2WckpmcEp86dw0EPk9eg8kKCLPH
         DgYr3IuNXMJviWYd8njoEjg1Iak6GWfnI4nNZfaHowaCkYBa0xT5LJYcVnIsNWZJZqKw
         tyXraQwvXYJurvAN4qcfdCDDWbJgugtar8Jj26WI1O8eTGh5L6gaLMlzK09e77IZZEc8
         UVrw5CMC5XhAeIe178xQXeTVlidLOnwTNZCOMvFwWssdpGVutIpU2ThUSVng8eL8dIm5
         aw/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784151591; x=1784756391;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=ocL48N0azq4XQo6lTJ0uGSQUcUQGguK7kbKdujwlOjs=;
        b=S6W3M8qXGqeMFBxSLBlZ/YZ0DQ1OrTsOhAKHEAx31qlDqTUs5Wfy09X7FNRo8x4TuG
         HQbbeFOkFFhOVjnQsWxuu3BB72dqsWbkwloqbS/RtlXzX82SDh4py5m6aNQuwYgnCEPm
         tHJSc9VW4pyhgrY0bUuln7A+iqpan17NWuKof5MyTcTLVHxZKru/Q4TBAXrZ36x8emFI
         fIja5xW3rI7dDHtrCYNyix4JsoR5I4h+D+yBocPxDEWm4OaaNVwXjBZ5cbqPg/NgbwxW
         iv6zUDMBdaq1r2Vde8RvlI07/3L6trIYrkCSa/RQoxfuy8+COCVyFq5JFgSB4JXYYtAb
         0x8g==
X-Forwarded-Encrypted: i=1; AHgh+Rpiy1OdkZvTqV7JuBcDurjlVSel3JfsMqKlhkjjr9+Tzn9fy3VtPFEfgikLOSh+1Q15VhMIthUyKlfSjAUp3A==@lists.infradead.org
X-Gm-Message-State: AOJu0YybhMEV+EqbZgZL0nPsNSs0E0A3EWRcE3bddkuddC987nUrYr4t
	+TuClBTdQJvoLVuSnuJpPtzySeOTYnM8eWJzhHX0qLJ7xWEW8Gd0UX3r+IXGiNXyqjr5+nY/c/q
	SeJFOkxr1TeQb7DZx7ApSK12vp/zM1rw=
X-Gm-Gg: AfdE7cn4v6blK/AIOy2xJEHswF/RLyQNgnS2yuMWKxzQuYvJoJctYhbLP2hMSYDVjsi
	yNP2hCi9TWRZdXW+iq/bu+mwxe0rTi8OBmm3FkSrkYUqP+Doxf3CmnfwSNpkLNqieIbXyBTmYcp
	lZs3TfKF4DqMCNfXOB0O9p2iKLZC2A/nLbzuxkX0bVn5L8+fhrtLqK4/tBJK7L2r1ajCNdvnFJq
	bLKrWMDSPu1VLjp73fE2hxcUxu3zEM31quXOgbnRLYTPPJwyxl4JzJmTNn5uw27
X-Received: by 2002:a17:907:c317:b0:c12:68f5:e083 with SMTP id
 a640c23a62f3a-c16794fbce8mr296353766b.64.1784151591115; Wed, 15 Jul 2026
 14:39:51 -0700 (PDT)
MIME-Version: 1.0
References: <20260714191341.690906-1-coiaprant@gmail.com> <20260714191341.690906-2-coiaprant@gmail.com>
 <dc21b2fc-ae11-4fde-a5b9-09e2c6bee5c9@bootlin.com> <CALj3r0gWyfHHp0S4=71M1-TjgHKcgGax4Lr0DzPi37Q69-iCwA@mail.gmail.com>
 <685d91a3-be6f-42c6-9e23-07629e21bcee@lunn.ch>
In-Reply-To: <685d91a3-be6f-42c6-9e23-07629e21bcee@lunn.ch>
From: Coia Prant <coiaprant@gmail.com>
Date: Thu, 16 Jul 2026 05:39:39 +0800
X-Gm-Features: AUfX_myJ66lYjr_Qz6cecGRXkAPSo59po4VpMAdHmLlPvDjxBLGd-D-lw51lYoE
Message-ID: <CALj3r0hrKt7T6_aZJ_cOJ=akPgShsau6-whcrrWekJE6H-z05w@mail.gmail.com>
Subject: Re: [RFC PATCH 01/10] net: stmmac: move XPCS lifetime management to
 platform drivers
To: Andrew Lunn <andrew@lunn.ch>
Cc: Maxime Chevallier <maxime.chevallier@bootlin.com>, kuba@kernel.org, davem@davemloft.net, 
	edumazet@google.com, pabeni@redhat.com, andrew+netdev@lunn.ch, 
	robh@kernel.org, krzk+dt@kernel.org, heiko@sntech.de, netdev@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org, 
	Christian Marangi <ansuelsmth@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260715_143953_428011_33616EE1 
X-CRM114-Status: GOOD (  12.51  )
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

QW5kcmV3IEx1bm4gPGFuZHJld0BsdW5uLmNoPiDkuo4yMDI25bm0N+aciDE25pel5ZGo5ZubIDAz
OjU35YaZ6YGT77yaCj4KPiA+IEkgYWN0dWFsbHkgc3BlbnQgYWxsIG5pZ2h0IGRlYnVnZ2luZyBj
YWxsIHRyYWNlcyBjYXVzZWQgYnkgdGhlIGN1cnJlbnQKPiA+IHN0bW1hYyBQQ1MgbGlmZXRpbWUg
bWFuYWdlbWVudCwgYW5kIGl0IHdhcyBub3QgYSBwbGVhc2FudCBleHBlcmllbmNlLgo+ID4gVGhl
IGNvZGUgZmVlbHMgbGlrZSBhY2N1bXVsYXRlZCB0ZWNobmljYWwgZGVidCB0aGF0IHNob3VsZCBi
ZSBjbGVhbmVkCj4gPiB1cC4KPgo+IFJ1c3NlbGwgS2luZyB3aWxsIHN0cm9uZ2x5IGFncmVlIHdp
dGggeW91LCBpZiBoZSB3YXMgYXJvdW5kLiBUaGUKPiBwaHlsaW5rIGludGVncmF0aW9uIGludG8g
c3RtbWFjIGNhdXNlcyBhIGxvdCBvZiBwYWluLCBhbmQgaGUgd2FudGVkIHRvCj4gcmlwIGl0IGFs
bCBvdXQgYW5kIHN0YXJ0IGFnYWluLiBCdXQgZG9pbmcgdGhhdCB3aXRob3V0IGJyZWFraW5nIHN0
dWZmCj4gaXMgZ29pbmcgdG8gYmUgaW50ZXJlc3RpbmcuCj4KPiBJZiB5b3UgZmVlbCB1cCB0byBp
dCwgaGF2ZSBhIGdvLiBCdXQgdGFrZSBhIGdvb2QgbG9vayBhcm91bmQgZmlyc3QsCj4gbWFrZSBz
dXJlIHlvdSB1bmRlcnN0YW5kIHRoZSBkaWZmZXJlbnQgdmFyaWFudCwgaW50ZXJuYWwgdnMgZXh0
ZXJuYWwKPiBQQ1MuCj4KPiAgICAgICAgIEFuZHJldwoKSGkgQW5kcmV3LAoKVGhhbmtzIGZvciBz
aGFyaW5nIHRoaXMuIEl0J3MgcmVhc3N1cmluZyB0byBrbm93IHRoYXQgSSdtIG5vdCBhbG9uZSBp
bgpmaW5kaW5nIHRoaXMgY29kZSBwYWluZnVsLgoKSSBmdWxseSBhZ3JlZSB0aGF0IHJpcHBpbmcg
aXQgb3V0IGFuZCBzdGFydGluZyBvdmVyIHdvdWxkIGJlIGEgaHVnZQp1bmRlcnRha2luZywgYW5k
IEknbSBkZWZpbml0ZWx5IG5vdCBjb25maWRlbnQgZW5vdWdoIHRvIHRha2UgdGhhdCBvbgpyaWdo
dCBub3cgLSBlc3BlY2lhbGx5IGdpdmVuIHRoZSByaXNrIG9mIGJyZWFraW5nIGV4aXN0aW5nIHBs
YXRmb3Jtcy4KTXkgY3VycmVudCBmb2N1cyBpcyBvbiBnZXR0aW5nIHRoaXMgUkszNTY4IFNHTUlJ
IHN1cHBvcnQgaW50byBhCm1lcmdlYWJsZSBzdGF0ZSwgcmF0aGVyIHRoYW4gYXR0ZW1wdGluZyBh
IGZ1bGwgcmVkZXNpZ24gb2YgdGhlCnN0bW1hYyBQQ1MgbGF5ZXIuCgpUaGF0IHNhaWQsIEknbGwg
a2VlcCB0aGlzIGluIG1pbmQuIE9uY2UgbXkgY3VycmVudCBzZXJpZXMgbGFuZHMgYW5kIEkKaGF2
ZSBhIGJldHRlciB1bmRlcnN0YW5kaW5nIG9mIHRoZSBkaWZmZXJlbnQgUENTIHZhcmlhbnRzLCBt
YXliZSBJJ2xsCmJlIGluIGEgYmV0dGVyIHBvc2l0aW9uIHRvIGNvbnRyaWJ1dGUgdG8gdGhhdCBs
b25nLXRlcm0gZWZmb3J0LgoKRm9yIG5vdywgSSdsbCBzdGljayB0byB0aGUgaW5jcmVtZW50YWwg
Zml4IHRoYXQgdGhpcyBzZXJpZXMgcHJvdmlkZXMuCgpUaGFua3MsCkNvaWEKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
