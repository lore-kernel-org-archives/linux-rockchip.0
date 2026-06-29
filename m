Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5D61C43458
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Jun 2026 08:29:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iQES4IoHq+O5yhLawhqYMpmXcCAk8JGns/4MFa87ibc=; b=JN2JzJTqz0OLsO
	/2l5/XJ1qSKaa9kNMsACcz2QOEQ4LiK6ImQRJPWdJcoFSnIXiZkVv+zUKIdS/EffIt7b/LfQYNnhx
	KcOoiLpokquvWKLgnh0yuRx4Iw7X2e1vYJLxtsnUEIDJfjfTboRJXzUp8Sl9fe7f+BdQUASrpVlHk
	e8Ev7fbCJ3gZDz5LRUXDZ3FtZQ1HEkfnIpEs5x4VkDxoJvMGIFTizAWvuKjVBTP0jon5TS96zOfpG
	uE2irsCsIME9ar4b5/91Z0rH45B8GvAgohypF8UNeRXrngGsiH6qdlL650qLozVIhaTOM379DvnmY
	+rRmyuItod7xdrzov2JQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1we7NF-0000000E0UY-0R6m;
	Mon, 29 Jun 2026 08:29:49 +0000
Received: from mail-ej1-x644.google.com ([2a00:1450:4864:20::644])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1we7NC-0000000E0TU-2uia
	for linux-rockchip@lists.infradead.org;
	Mon, 29 Jun 2026 08:29:48 +0000
Received: by mail-ej1-x644.google.com with SMTP id a640c23a62f3a-c126b8118afso86860666b.2
        for <linux-rockchip@lists.infradead.org>; Mon, 29 Jun 2026 01:29:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1782721784; cv=none;
        d=google.com; s=arc-20260327;
        b=jJM6+jnkQ+k7ee0clqFPM+Ridxa0mOb4IVrfHmVAllnuWXOV/+7ffzQQDb57YAQ1BU
         iXrAzY/760uQ1wutrpEglX3WM3/wTn8xGbaUdBsqoScoScVNmU+aJAvHlpwRIdjrZUCC
         pjLOUPEZxEi2QjOjnpHlIiTqgD9/UGISdW588USmlhz66/kNHL7B9Tu5zIdLYZuPmRbV
         P0kE7jV6doEDM8Otg5Ki2MQesOdCL1gLGyx7cikZvzx66B70EQVNGRAy9zk5PS2P/UwS
         pDgt+esfw+DPijtQcGQ9kEvfrt2v6L9bfV1ax/yOgerX+G6t0zcHo+fEzV/JA6c4W8fM
         UqIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=CQk3EhYxqTA9sSVEy1cSFKfxi+PZ6VIeCkzzbrNRYs4=;
        fh=RaDkxHYUhhcW3XPXrPP/e0L29NuH3jg5XPJcyzj0Lno=;
        b=TB3HB/FHay5QcD1aFMEODRCmEc2GgwMwScBvGTHYu9NNb6Zd5fU1PoCklJLAVq1+31
         oA1axOhLzkjBEnoSWfbtY0QdYoApw7WzYNKVccz8399OMz1lTarMDGRxdWsNtqN4Wxh+
         CW5rU2Zi62C7/4fAeBDAOkYcFnpRmfRkc2ouAPEDPOleKgJ0dgYrfP+l+dNVcN5ej6fF
         VzRRlHymDMsKclhr1x7r8Ak8qvmRCnM/FOlcvhmUb4OyTM9//8kV/mkCrbuBWXyoH5Bl
         iiSCLT8St/dXgcdxzKZ2+CkzP3Wi2pYXEBtbXdpE1bBhNyUIDLbdW2et2uUZAyLuHArb
         J1Qw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782721784; x=1783326584; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CQk3EhYxqTA9sSVEy1cSFKfxi+PZ6VIeCkzzbrNRYs4=;
        b=Xhj1caIWl/wT1oIm2TzfWJrCbPJNzmOdrwaeaLeEDbOjh5TBgPTYjdO1z48so7893A
         t7ons5w/GhfIjLdpi2qqMM+pc1jq9STWHpunz+kAnbBs0Y0dtzRAvKVdBzmGl2dp2Tib
         LkCn4QAAzxyrrWsgWPOgfK4JX+hOy++EkDqbcEiZ9Vry6uKYpkFqFqMcP0BnkJC/53mF
         TUBUnmazVTRvXQN9Cbl/+R/th07pbeBRe8MvpNXnaFyF7GPIdZiV3lQg8gJvTxX4ohk4
         oztATfDedJ39AnhYMUzTAvq/fKg4oInrSs4uLYDNQO2SUqSYIUwRONgDplvVp+K5MEdl
         G35w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782721784; x=1783326584;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=CQk3EhYxqTA9sSVEy1cSFKfxi+PZ6VIeCkzzbrNRYs4=;
        b=fcJWmNWzdLwRMNT3ITuWIqeTN7ZQ2zDsGhLh6+ZGi++s5iO/J6mURQJlgy/n7ksV5K
         oRYwVTgJ2r7p63icjmFP52Unipv5XytngDskXuaQ+zTNpLEILipUeg4W4P1RkvhK+6zO
         1N66oLdzw25LIoJB4RflXCqJ+vwmLS6gXOIR2qNpKEGTc1TC7yOML7xBfMihhLKLccoF
         InPhXg7EQPQQWY0C7dIKtgw5vUYtjpnmDTW/Xga1eV1rehL40us/oU2d3BY6R4rRrKYD
         Mq5FI8jT/weB1pZflSSKHWX0/RxnBV3EpLIsOYS88lEXU4h27Xo4m57jmNswkCSfTSmN
         ii5A==
X-Forwarded-Encrypted: i=1; AHgh+RphdIep6F7IkEdottO6eyb+WHzkH0gxxWxK1fMprdU+4SDMeEVFG4mppR8wFBoC3ixNAd2eFpim4ywEFb2uHw==@lists.infradead.org
X-Gm-Message-State: AOJu0YwAPi9SNYTW8ytM5zwYBpLBHr/01kenPpFkggim7InThSQkVftR
	8D+EYF5s3tEQFc+tOBt6nP8/QTBPj1bvOuVL2ysd8Vi5LJOHPJ/SKvWEAyf2IKY7zllVTQDXN27
	6NrRpRn3p2ZV6798x0I/27ydr2+ezuEM=
X-Gm-Gg: AfdE7ckehlSw/cWA/HPGxGO9NFrl+/dLHEQf5hc8aMTmu9SkF6U1XAVGVCRoAA4qjCw
	Uj+a+tuCC2gQ6e2EWJNdkeXl5uQ3Cx8JYjvcbEbM91jbx+ePFgSClUsiS8iulGR5MZpIEy4+LPs
	vnOpVJdl9PQWJHeV9naZHwKp0+KePYs1ZOF+lxWqVKJ/X/V043aMp443vpQjTLFzT7CHpHBwkJP
	sDbjqDqhzpI2DlzU4D0FHPRBhN4Hy+TJApG2jO4ZzVyi9VOIROBjD7pjnpcqp2FuzAUqieyW89J
	CbTnGFKBGjg=
X-Received: by 2002:a17:906:9f8a:b0:bee:f541:1dca with SMTP id
 a640c23a62f3a-c1205eb8582mr857638766b.28.1782721784045; Mon, 29 Jun 2026
 01:29:44 -0700 (PDT)
MIME-Version: 1.0
References: <20260627225755.1710837-2-coiaprant@gmail.com> <20260627225755.1710837-4-coiaprant@gmail.com>
 <20260629-fabulous-muskrat-of-romance-cd1bef@quoll>
In-Reply-To: <20260629-fabulous-muskrat-of-romance-cd1bef@quoll>
From: Coia Prant <coiaprant@gmail.com>
Date: Mon, 29 Jun 2026 16:29:32 +0800
X-Gm-Features: AVVi8CfWsSLK-1uKnZroe1Q5sLbgUiQYsXoAa1H7uKEtrkvHKF52rbw5QkyqxSM
Message-ID: <CALj3r0iDFBLarResDZA0zCKUmkXwfV7dPN+fqAK0jBF7yRLmUQ@mail.gmail.com>
Subject: Re: [PATCH 2/3] dt-bindings: arm: rockchip: Add Graperain G3568 series
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Dragan Simic <dsimic@manjaro.org>, 
	Jonas Karlman <jonas@kwiboo.se>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260629_012946_759521_DEDCA998 
X-CRM114-Status: GOOD (  17.27  )
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

T24gTW9uLCBKdW4gMjksIDIwMjYgYXQgMDM6MTI6WFhQTSArMDgwMCwgS3J6eXN6dG9mIEtvemxv
d3NraSB3cm90ZToKPiBPbiBTdW4sIEp1biAyOCwgMjAyNiBhdCAwNjo1Nzo1NkFNICswODAwLCBD
b2lhIFByYW50IHdyb3RlOgo+ID4gVGhpcyBkb2N1bWVudHMgR3JhcGVyYWluIEczNTY4IHYyIHdo
aWNoIGlzIGEgZGV2ZWxvcG1lbnQgYm9hcmQgYmFzZWQgb24gUkszNTY4IFNvQy4KPgo+ICJEb2N1
bWVudCIKPgo+IFBsZWFzZSBkbyBub3QgdXNlICJUaGlzIGNvbW1pdC9wYXRjaC9jaGFuZ2UiLCBi
dXQgaW1wZXJhdGl2ZSBtb29kLiBTZWUKPiBsb25nZXIgZXhwbGFuYXRpb24gaGVyZToKPiBodHRw
czovL2VsaXhpci5ib290bGluLmNvbS9saW51eC92Ni4xNi9zb3VyY2UvRG9jdW1lbnRhdGlvbi9w
cm9jZXNzL3N1Ym1pdHRpbmctcGF0Y2hlcy5yc3QjTDk0CgpUaGFuayB5b3UgZm9yIHBvaW50aW5n
IHRoaXMgb3V0LiBJIGhhdmUgcmV2aXNlZCB0aGUgY29tbWl0IG1lc3NhZ2UgdG8KdXNlIGltcGVy
YXRpdmUgbW9vZCBhbmQgc3BsaXQgdGhlIG92ZXJsb25nIGxpbmUgdG8gc3RheSB3aXRoaW4gNzUK
Y2hhcmFjdGVycy4KCj4gPiBUaGlzIHNlcmllcyBhbHNvIGhhdmUgYW4gU0JDIHNlcmllcyB3aXRo
IHRoZSBzdWZmaXggImJveCIuCj4gPgo+ID4gVGhpcyBib2FyZCBpcyBkZXZlbG9wbWVudCBib2Fy
ZCBzZXJpZXMsIG5vdCBTQkMgc2VyaWVzLgo+Cj4gUmVtZW1iZXIgdG8gYWxzbyBhZGRyZXNzIFNh
c2hpa28gcmV2aWV3LgoKT2theS4KCj4gPiBMaW5rOiAuLi4KPiA+IFNpZ25lZC1vZmYtYnk6IC4u
Lgo+ID4gLS0tCj4gPiAuLi4KPiA+ICsKPgo+IExvb2tzIGxpa2UgeW91IGp1c3QgYWRkZWQgYnVu
Y2ggb2YgZm9ybWF0LXBhdGNoIGFuZCBjaGVjay1wYXRjaAo+IHdhcm5pbmdzLi4uCgpJIGhhdmUg
cmXigJFydW4gY2hlY2twYXRjaCBvbiB0aGUgZW50aXJlIHNlcmllcyBhbmQgZml4ZWQgYWxsIHRy
YWlsaW5nCndoaXRlc3BhY2UgYW5kIG90aGVyIGZvcm1hdHRpbmcgaXNzdWVzLiBUaGUgcGF0Y2gg
c2V0IHNob3VsZCBub3cgYmUKY2xlYW4gKGV4Y2VwdCBmb3IgYSBoYXJkd2FyZeKAkWxpc3QgbGlu
ZSBpbiB0aGUgdGhpcmQgcGF0Y2ggd2hpY2ggSSBrZXB0CmludGFjdCBmb3IgcmVhZGFiaWxpdHkp
LgoKQXBvbG9naWVzIGZvciB0aGUgb3ZlcnNpZ2h0IOKAkyBpdCB3YXMgbGF0ZSBuaWdodCB3b3Jr
LgoKSSB3aWxsIHNlbmQgYSB2MiB3aXRoIGFsbCBmaXhlcyBzaG9ydGx5LgoKQmVzdCwKQ29pYQoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
