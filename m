Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C85CEEF30A
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Mar 2026 06:50:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xcmIcNT6zn5eGma3rWqtXz5VNl2io1ijd1pFCEEJcrE=; b=iHsd3uHM5YUVZg
	8GdCJmo6A6MReF4rNfqqQvyQGpIMHzGP7aadiZPvj9u7Er82Oagh4fxeH03GqT6WGgwb7rO4Er2NS
	KFDjbWd2ersxvNL7NUTUPOEnYhrQDSDI9ba8RPV3EHpSMv84NCEMwEYUXKeGFr/YF1WENwU4m6ncX
	cVe++WjrXQspSe21Zae2s1ni/Ne/n5cQBNL6cd/6L94d4vt1pKFYWrA0uyi3HIlX5tRzDDVolApFn
	SZla2rKayEOlz6tmeWp1/EaP+/FDrVz/AewUq0DZCm3Ef8kTVp2ct285/LwMpXTLsd9auitIlrRv/
	SxVEBEgBtRogY1qgfhzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy2Xr-000000012j5-2cCN;
	Thu, 05 Mar 2026 06:50:51 +0000
Received: from mail-qv1-xf31.google.com ([2607:f8b0:4864:20::f31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy2Xp-000000012iB-3Aeq
	for linux-rockchip@lists.infradead.org;
	Thu, 05 Mar 2026 06:50:51 +0000
Received: by mail-qv1-xf31.google.com with SMTP id 6a1803df08f44-899fb030812so57689616d6.2
        for <linux-rockchip@lists.infradead.org>; Wed, 04 Mar 2026 22:50:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772693448; cv=none;
        d=google.com; s=arc-20240605;
        b=h4eH26YYsKZ3nGzqMk2xFyLaBx1dMwFI7ZmVSilX4Dtgw0MG3XVJhSg9RqbUR6/VIo
         7+8s1dH0eJNAnGQ/1v5sDFZYErr9fIBaHa42I6YAVwT+hsrYT3Ak4SUw1hPQbt0qYHcR
         HQ390Kf3wBH7n0nw7YSq1Sha8cwuUN0QX5r9x0uuzLG4Gkaf6Z9hPu+qkfOEu4fvuGd/
         WvgD4Q27MB/6D8zDwmL8PL426XBhqOTU3vwY9ndIICyeYnvSFbYHb7ZSnciXVzpJabas
         2s7b8djI07Mv+B6xCcBWLPwouMxqpVjX0cR9/Cgf+iE1BqR/E69nPmsM0ME5hvq6R5Yu
         OeqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=7xR/ODl/LLpv8qzPXxQC2I5D7gVivJZJFQgXB+mbpQQ=;
        fh=oyYLGgP1PF3XEPofJNefuAoZdnsZUu2K4aNiP1b45E4=;
        b=SLbA3uxN59XJpInhN3k1dgjuoUnCxJk3h9yyIc8tGtOjzyZ1VMs2DAsRyh/I9AS5yp
         fkXRYsJ9P5DWEmnjgv5IqcWXnOWpi2g5LUaGYLOacofQypehfWqXY1CyWgrv0+s97qfo
         HOdgZz53DdZKDcQn2kt3HsBqHOUmMSzIYLR4ywdZL1LnIi5t389BW+pzn+IzgjuiI1Ou
         d2SNaRWl2Fou8jlerB40VLqsWbvmbrVX9SECwdET8yOogs76yTrKcSDEiyUJljG8SxQU
         6DjUcfH4Ov0p5UDMIQhMfcC4o8BpIqXtA2pDF7ItcpKgso6pPyWDtKXuSVM5uEMdPtcG
         PYMw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ausil.us; s=google; t=1772693448; x=1773298248; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7xR/ODl/LLpv8qzPXxQC2I5D7gVivJZJFQgXB+mbpQQ=;
        b=ZWFn/C9CETl/O6NkT9kHbd9F2STa4rH4BaOEOGnpFSLusHxqF9RfJdQ7hsADFjgrGN
         g6SswAtFQxXTcs5Pjqt8AQ/h42ZVK42TOy5SOvxjXxVDOPWBKfrHf+GGevbgvQPxS7QV
         Dr7HOg2qOc+cFV60ge8oZi99rH0UB7c4CNiKnwNpuKEgejN+6+sfM40kZY+RXna3iur5
         4+8vGhON6FgZlCK4rdOmRVdjDc7sonWxEOGazbWQrgjraJyEIl3ri72+xPEMWpQoEtN/
         tUI3EVCOWyIjn7G3AN5XgCaMkpB/JAvbNqEpGgYOV3fq0GJIrInfkycd/VYbXtu9BMdN
         ltHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772693448; x=1773298248;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=7xR/ODl/LLpv8qzPXxQC2I5D7gVivJZJFQgXB+mbpQQ=;
        b=jJRlMkLnfugxoLJCTX9XXF8jFF/rju4uiewvmVIDPlxgIwJ2vpxGYX9tdAM5c+nAnv
         qZyai+H5TIkK0JuJTxJPs1AsQxcFbCVNu1za3Lhnj10bpmvDbx1c4HHPG/YGoUiYSu2A
         1SBauqKWnrgUB9GxP2b6hMzWCaGGSbe5bjMzvnZUTDw9SZJo8bbKLpcU80S/1to8M5q/
         eLDAAjR4RU99qMWfVQ2+sFx9Z5H6C1Ve54Bei4kEjtygwtZqdDRKDxrxgqzCxYjUpobI
         aKBfJyM5qZfYI690rolJj2E4N/mVk/FDlcEdZ7MN4hr33ebNf3sXTVkvj11n9XaQYDlP
         n4lQ==
X-Forwarded-Encrypted: i=1; AJvYcCWjO4RNYQ3juV2bukRMLa61gmBjYGEQZ6fGzGHdm3a4hqJiQlT6MKK7pyRuIXemteh5WMThTUsn0CN5Ifj1cA==@lists.infradead.org
X-Gm-Message-State: AOJu0YwPIv10WPR3kPlx6Hev12bhvTkoXEn7n5DxyEnjcP86GthttUFC
	gLvwwyX/Wl15YVtmxQ69vcqOGdfGiSLWAHLB9WOdyerDMb2HsLw3M4SJ4Q6Nbry6EkuTw0QVPU+
	Wt9prpE/cVUC36l30ipWoXO/l2eMpB0U3GZmww2I5mQ==
X-Gm-Gg: ATEYQzx/lUbAADW+9VzDlhabOktztoZ1zH/m9vryXS3E6xUFctqL8dNXGDlIxZF0kQy
	GrSPKltvMvXewOTlZymNpp1XcEy+asEj+5lxxWKSCbUuC6JGEBjOc+MrNhaE4l4+1vClWQUqZQr
	wHLzpPrOxbOLSJwXiP23w4LE3OthrtxIeNvGMujuL5hUrAZTnbleoSZ6RfFO+i8YQxgceL6aIIi
	/dbgVWARK7heN3Qd1/M5Ord8XtLyUCNvzrX+tEpj2ahlO8+qlyW9i9tCuYvRqMcbt/j3URm/zN2
	DJ59tXZfmHolS+m+GcFwOBELlVi8jyMHwN7Pg55wyiqkkiMtA+82nR6OzcWMLJPf84u1JaE=
X-Received: by 2002:a05:6214:d89:b0:89a:90e:3a1b with SMTP id
 6a1803df08f44-89a19af74b3mr66467296d6.25.1772693447983; Wed, 04 Mar 2026
 22:50:47 -0800 (PST)
MIME-Version: 1.0
References: <20260228205418.2944620-1-dennis@ausil.us> <20260228205418.2944620-3-dennis@ausil.us>
 <CALWfF7LZV07x7zAgufE_aa58s7x6e_ODAM2LgZqjbEakDticpA@mail.gmail.com>
 <CAABkxwsJ2ZnytCcHEvXWzNkjwzNThoTR23FAeHJLdf4JjXJEMg@mail.gmail.com> <CALWfF7+gdNqSgzk4uAnVRkG8vT9FwJDV46VXpb26hd7BzdaGcw@mail.gmail.com>
In-Reply-To: <CALWfF7+gdNqSgzk4uAnVRkG8vT9FwJDV46VXpb26hd7BzdaGcw@mail.gmail.com>
From: Dennis Gilmore <dennis@ausil.us>
Date: Thu, 5 Mar 2026 00:50:36 -0600
X-Gm-Features: AaiRm53rLf9JFsOMPcs6Gcb8I80gESnZp0sJGMhEniGuj0Hsfu1GrQDeh7FJtCU
Message-ID: <CAABkxwtG2e5LpjS-sScmn46DY3eXd6tyNCc1oNHKqoaO+PVwuA@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add Orange Pi 5 Pro board support
To: Jimmy Hon <honyuenkwun@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, FUKAUMI Naoki <naoki@radxa.com>, 
	Hsun Lai <i@chainsx.cn>, Jonas Karlman <jonas@kwiboo.se>, Chaoyi Chen <chaoyi.chen@rock-chips.com>, 
	John Clark <inindev@gmail.com>, Michael Opdenacker <michael.opdenacker@rootcommit.com>, 
	Quentin Schulz <quentin.schulz@cherry.de>, Andrew Lunn <andrew@lunn.ch>, 
	Alexey Charkov <alchark@gmail.com>, Peter Robinson <pbrobinson@gmail.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260304_225049_817144_8B6F36CC 
X-CRM114-Status: GOOD (  16.93  )
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

T24gVHVlLCBNYXIgMywgMjAyNiBhdCA5OjQ14oCvUE0gSmltbXkgSG9uIDxob255dWVua3d1bkBn
bWFpbC5jb20+IHdyb3RlOgo+Cj4gT24gVHVlLCBNYXIgMywgMjAyNiBhdCAxOjQz4oCvUE0gRGVu
bmlzIEdpbG1vcmUgPGRlbm5pc0BhdXNpbC51cz4gd3JvdGU6Cj4gPgo+ID4gT24gTW9uLCBNYXIg
MiwgMjAyNiBhdCAxMTo1N+KAr1BNIEppbW15IEhvbiA8aG9ueXVlbmt3dW5AZ21haWwuY29tPiB3
cm90ZToKPiA+ID4KPiA+ID4gSGkgRGVubmlzLAo+ID4gPgo+ID4gPiBTb21lIGN1cmlvc2l0aWVz
IGJlbG93LAo+ID4gPgo+ID4gPiBPbiBTYXQsIEZlYiAyOCwgMjAyNiBhdCAyOjU04oCvUE0gPGRl
bm5pc0BhdXNpbC51cz4gd3JvdGU6Cj4gPiA+IDxzbmlwPgo+ID4gPiA+ICsKPiA+ID4gPiArICAg
ICAgIC8qIFBybyB1c2VzIGdwaW8tbGVkcyBpbnN0ZWFkOyBwd20wIExFRCBpcyBub3Qgd2lyZWQg
dXAgKi8KPiA+ID4gPiArICAgICAgIC9kZWxldGUtbm9kZS8gcHdtLWxlZHM7Cj4gPiA+IDxzbmlw
Pgo+ID4gPiA+ICsKPiA+ID4gPiArICAgICAgIGdwaW8tbGVkcyB7Cj4gPiA+ID4gKyAgICAgICAg
ICAgICAgIGNvbXBhdGlibGUgPSAiZ3Bpby1sZWRzIjsKPiA+ID4gPiArICAgICAgICAgICAgICAg
cGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPiA+ID4gPiArICAgICAgICAgICAgICAgcGluY3Ry
bC0wID0gPCZsZWRzX3JnYj47Cj4gPiA+ID4gKwo+ID4gPiA+ICsgICAgICAgICAgICAgICBibHVl
LWxlZCB7Cj4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgY29sb3IgPSA8TEVEX0NPTE9S
X0lEX0JMVUU+Owo+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgIGZ1bmN0aW9uID0gTEVE
X0ZVTkNUSU9OX1NUQVRVUzsKPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICBncGlvcyA9
IDwmZ3BpbzEgUktfUEM2IEdQSU9fQUNUSVZFX0hJR0g+Owo+ID4gPiBIb3cgY29tZSB5b3UgZGVj
aWRlZCBncGlvLWxlZHMgaW5zdGVhZCBvZiBwd20tbGVkcyBmb3IgdGhpcz8gR1BJTzEgQzYKPiA+
ID4gaXMgbXV4ZWQgd2l0aCBQV00xNV9JUl9NMgo+ID4KPiA+IHRoZSBkb3duc3RyZWFtIGR0cyB1
c2VzIGdwaW8tbGVkcyAgdGhlIEdQSU8gY29tZXMgZnJvbSB0aGUgc2NoZW1hdGljCj4gSXQgc2hv
dWxkIGJlIGZpbmUgdG8gdXBncmFkZSB0byBwd20tbGVkcyB3aGVuIGFkZGluZyBpbnRvIG1haW5s
aW5lLgo+IFRoZSBPcmFuZ2UgNSBQbHVzIGRpZC4KPiBJbiB0aGUgZG93bnN0cmVhbSBEVFMsIHRo
ZXkgdXNlZCBncGlvLWxlZCBmb3IgdGhlIGdyZWVuIGxlZAo+IGh0dHBzOi8vZ2l0aHViLmNvbS9v
cmFuZ2VwaS14dW5sb25nL2xpbnV4LW9yYW5nZXBpL2Jsb2IvMjMyZWQ0Yjk3YjY1ZGEyYjdiNjQ3
YzRlM2M0OTZmODU5NGI5ZjNmMS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1v
cmFuZ2VwaS01LXBsdXMuZHRzI0wzMS1MMzYKPiBCdXQgaW4gdGhlIG1haW5saW5lIGtlcm5lbCwg
aXQgd2FzIGNvbnZlcnRlZCB0byB1c2UgcHdtLWxlZC4KPiBodHRwczovL2dpdC5rZXJuZWwub3Jn
L3B1Yi9zY20vbGludXgva2VybmVsL2dpdC90b3J2YWxkcy9saW51eC5naXQvY29tbWl0L2FyY2gv
YXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LW9yYW5nZXBpLTUtcGx1cy5kdHM/aWQ9MjM2
ZDIyNWUxZWU3MmEyOGFhN2MyYjFlMzk4OTRlNDM5MGJiZjUxYwo+Cj4gSmltbXkKCklzIHRoZXJl
IGEgcmVhc29uIHRoZSBibHVlIGxlZCB3YXMgbm90IGNvbnZlcnRlZCBmcm9tIEdQSU8gdG8gUFdN
LCBhbmQKb25seSB0aGUgZ3JlZW4gbGVkIHdhcz8KCkRlbm5pcwoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
