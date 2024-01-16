Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3DD5FC47077
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Jan 2024 19:39:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IL066e6QniofvzIEZl74g5/h502ls9OUnP+49Snvqbs=; b=0kz4EPyW/bsAK5
	7MhrAYCkqpVd8poFgDS+l2DqCaObRps1rmZVXYiT33kJcQVSeNhYnNvmFPHc1IwlKaCak/tJ+HBZ1
	aSWNzwN5QlYNATLS+FUkzvPQGxrjyJhwm1riMmPbig+6G1IWij73Pdb2wK/41VAICUWws1zKv/h3M
	UzGauYhIvgiqAa8fRbJZpyahceGYRrvQOWcfTY1TSvG3jHX46gMTm/l79vth/MQSj+TnVtn1EBPVj
	u3THZrXXXBEJkj8AmXcyvv/3LwSatMufDLp6RmzA2qOHS4OsI6xT13IX2702BASDO44XNZ/1BpAgT
	GWuWjP9zSLLCHeti7xjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rPpHR-00DABs-09;
	Tue, 16 Jan 2024 19:39:25 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rPpHN-00DA9l-1Q;
	Tue, 16 Jan 2024 19:39:23 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id 43DE9B80EAD;
	Tue, 16 Jan 2024 19:39:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DD057C433B2;
	Tue, 16 Jan 2024 19:39:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705433957;
	bh=pjDgdDVU36HSsdeAh8iqjM/fJHnEYcbqQIdZRgQQpxo=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=iHdd04mxCP+tOwIJVpVwsLiix52+TwrftpE748cBUHhjPy92EUpa6S++7uqtmVG/z
	 TNw6IND5Q2iTwLW0o8XJI7dh8mF5cjI5oPpGvMq5ovWMsBLI4BHDSk7v/TbKZC+WtD
	 xeRjeZWTXdp43zoGXVMvssyHaRkfIZ1yNIoo00OWd54XUCHGrv8JUpb0UaKo/dwprh
	 E4tDiVadkiMzCQdRFEwfnc1y6Dby2nqUYq7q3qrlYf72er/mY43ps+UHnIrlHd5+Ia
	 qSMnxm0UO7eTv4tNwagpV8JHgS3gNHPgCDXP0QQnB9cYhPA3OnR4VBTuXGmkQ27H6B
	 5hF2abXdNgMPw==
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-2ccbc328744so123521451fa.3;
        Tue, 16 Jan 2024 11:39:17 -0800 (PST)
X-Gm-Message-State: AOJu0YwEeaqlPZYaQQbrMw/TgYJBFnECXjhOtDo+0hDsARUZoDr6YEL5
	n+fM7Pq9DCNtre4Fz6HEncm6SbTSTseyJ+GH6A==
X-Google-Smtp-Source: AGHT+IHXHjYON9ofprozxosV1rLsC6hkADTeC9xOtqdXDcdf4lotORYA2DspdiZkDAvS/+SWb8KBa8qFkc+G/Bp+/vM=
X-Received: by 2002:a2e:390a:0:b0:2cc:ea0d:f6c0 with SMTP id
 g10-20020a2e390a000000b002ccea0df6c0mr3767274lja.83.1705433955919; Tue, 16
 Jan 2024 11:39:15 -0800 (PST)
MIME-Version: 1.0
References: <20240116084618.3112410-1-tim@feathertop.org> <20240116084618.3112410-3-tim@feathertop.org>
 <170543385965.291741.2100641423770592209.robh@kernel.org>
In-Reply-To: <170543385965.291741.2100641423770592209.robh@kernel.org>
From: Rob Herring <robh+dt@kernel.org>
Date: Tue, 16 Jan 2024 13:39:03 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJ0BfVY0zO4SAB6rjZVvXYrZObZ+6bfWkPBC1NO=VOzFA@mail.gmail.com>
Message-ID: <CAL_JsqJ0BfVY0zO4SAB6rjZVvXYrZObZ+6bfWkPBC1NO=VOzFA@mail.gmail.com>
Subject: Re: [PATCH 2/3] dt-bindings: rockchip: rk809 fix compatible string in examples
To: Tim Lunn <tim@feathertop.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	Lee Jones <lee@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Zhang Qing <zhangqing@rock-chips.com>, 
	Heiko Stuebner <heiko@sntech.de>, Chris Zhong <zyw@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240116_113921_649897_F396D723 
X-CRM114-Status: GOOD (  11.98  )
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

T24gVHVlLCBKYW4gMTYsIDIwMjQgYXQgMTozN+KAr1BNIFJvYiBIZXJyaW5nIDxyb2JoQGtlcm5l
bC5vcmc+IHdyb3RlOgo+Cj4KPiBPbiBUdWUsIDE2IEphbiAyMDI0IDE5OjQ2OjE3ICsxMTAwLCBU
aW0gTHVubiB3cm90ZToKPiA+IEZpeCB0eXBvIGluIHRoZSBleGFtcGxlIHNwZWNpZnlpbmcgd3Jv
bmcgY29tcGF0aWJsZSBzdHJpbmcKPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBUaW0gTHVubiA8dGlt
QGZlYXRoZXJ0b3Aub3JnPgo+ID4gLS0tCj4gPgo+ID4gIERvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy9tZmQvcm9ja2NoaXAscms4MDkueWFtbCB8IDQgKystLQo+ID4gIDEgZmlsZSBj
aGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4gPgo+Cj4gQWNrZWQtYnk6
IFJvYiBIZXJyaW5nIDxyb2JoQGtlcm5lbC5vcmc+CgpFcnIsIHdpdGhkcmF3bi4gVGhpcyBkb2Vz
bid0IHBhc3MgdGVzdHMuCgpSb2IKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
