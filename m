Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7FA38C369A6
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Apr 2025 14:11:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TB0thLPBC2GLWYACr5E2DCnSkUiG7k5dsV+tOYxlbGs=; b=sYMGMtcKVTGgtL
	xQ/b4OjsjIzsrDkZD65zc2kK3Zc6AlVOk1EE6hxqqhl3LjmAIRAZj9wyavLBSPPkgyh2Wderw+x0f
	9fZpBh+QuyhFD3kNtA2uAy4hSjrmhk+L/LlQNZRvklsfK7XxNF0e26lH3hRQXaSioDbQ7I8Ol5XTg
	pClwS8q3hkttTLjkcHlbyeEIDUJGd2UCZx5kZzfvlcuKaOmyxmFxkn0NxZNJEvOd5MorwCU3aox0Y
	V/fMsTGp4GQY85UEKB1W2+R2wzAz+JU1gtcM6ictfnGfkOOoAHMWCyBpCqrYcvvnRStQfChea18aO
	GDGT2Caxi/bfRO/aqgxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2sd2-0000000AnAl-2cV9;
	Thu, 10 Apr 2025 14:11:40 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2scy-0000000An9F-38US;
	Thu, 10 Apr 2025 14:11:38 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 34EFA49FCA;
	Thu, 10 Apr 2025 14:11:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D95C1C4CEE9;
	Thu, 10 Apr 2025 14:11:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744294295;
	bh=rco72FMDY4JgO03QNoKdCEdvvo+YwCaCCrx/8pDGOPE=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=eQ7IoFkt+osTTj0Vi2+kpNtwDFjpZvXxiewz37bA8FBL4ZFA+CuGaUhIkcbbXR0k6
	 29Fy2FHt0RumRcvkuDYPQqmLh45tYMCsTeWcx/7yRedEvadWGSNT3qNQCaOEPWaIhi
	 sQ4M/3koFKQMQtD/p3dgWNUi+TktHMSbsFTetAE7iQAOPr1kFNMDHElpUIfORI75ih
	 Y1mz/jaogtjNAchtXKtaHV3jAfPhlwYK8l+Ev9ql2/fTarC9pdP6vCO+1LVsL1mN4F
	 wm3PLW30ItliFoXF10R7DtPFDDPMghDP0rRQVzEYt78nRT0N33cKXJqOrMXX+rXwSW
	 sXJVlxGKmrCOQ==
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-5e6f4b3ebe5so1404872a12.0;
        Thu, 10 Apr 2025 07:11:35 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUvGqZCx+/BcPIUjsrPCDRSYf0mTQPwKgMCSHk6QHiff/P78LbyDPY988s3+Yx8LdIp5Dn637wGsr9morCooRMTOA==@lists.infradead.org, AJvYcCV4J7Ac8+ur58JrdebXfYQseGluMpSGdWJOdmmoSUn7eGiCEoW74zD+h3Xk0qY2KldGWE17yuN/DwGawNHIuKs=@lists.infradead.org, AJvYcCVN8BKnb2mYOBKHcNuaSVZ0wMaLpcfR6OoPbpPS009SvFFfk1/CrkS5NOqYdZhfsbJcULukJtV9YvmvHzgpzCM=@lists.infradead.org, AJvYcCX37UvDzaUBiY7w4zipclNpoYApVUUkZFw0vk1gDEisPDgfL97d3GhX+5xhTknHk1+DQgadGm37tzt4LyqX@lists.infradead.org
X-Gm-Message-State: AOJu0YzSAgyoueBCogmFEA+J8E0+vw+/5b81btwH7U0fwOkEDTIq/+tD
	t72g6xj38aqSAt85ErrvcJ5Fy3jdW9QqZtoROFg/rISukB4KVgsGLgKbbYyrVKUnTTA3UNiz2PV
	3fFBunQSi4jFZ5JiSfq1ytZYW6w==
X-Google-Smtp-Source: AGHT+IGlh97um6SMQiGxBgsgdbsviDx65SZRgGYwOH79oWcJKJOpcvjinlVEV2oCvrCbvL9uHlFPqdqxcM1fMXmRyBY=
X-Received: by 2002:a05:6402:42c3:b0:5e4:d2c9:455c with SMTP id
 4fb4d7f45d1cf-5f3292682cfmr2701509a12.10.1744294294406; Thu, 10 Apr 2025
 07:11:34 -0700 (PDT)
MIME-Version: 1.0
References: <20250403-dt-cpu-schema-v1-0-076be7171a85@kernel.org>
 <20250403-dt-cpu-schema-v1-14-076be7171a85@kernel.org> <174377856145.1313232.11316769002552655294.robh@kernel.org>
In-Reply-To: <174377856145.1313232.11316769002552655294.robh@kernel.org>
From: Rob Herring <robh@kernel.org>
Date: Thu, 10 Apr 2025 09:11:22 -0500
X-Gmail-Original-Message-ID: <CAL_JsqKiduJBRBuRS364_bSjEfC_cvgyicZX1BwvNyb1+GVc3w@mail.gmail.com>
X-Gm-Features: ATxdqUEvfSUaWUzPsxy3ohcumibpamjDRmILBf-6gs6fjUtKKg1MwCu-Qt45NOQ
Message-ID: <CAL_JsqKiduJBRBuRS364_bSjEfC_cvgyicZX1BwvNyb1+GVc3w@mail.gmail.com>
Subject: Re: [PATCH 14/19] dt-bindings: arm/cpus: Add schemas for
 "enable-method" dependencies
To: "Rob Herring (Arm)" <robh@kernel.org>, Stephan Gerhold <stephan.gerhold@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Viresh Kumar <viresh.kumar@linaro.org>, 
	linux-kernel@vger.kernel.org, Conor Dooley <conor@kernel.org>, 
	linux-rockchip@lists.infradead.org, 
	Daniel Machon <daniel.machon@microchip.com>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Shawn Guo <shawnguo@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, UNGLinuxDriver@microchip.com, 
	Jerome Brunet <jbrunet@baylibre.com>, Kevin Hilman <khilman@baylibre.com>, linux-sunxi@lists.linux.dev, 
	Liviu Dudau <liviu.dudau@arm.com>, linux-arm-kernel@lists.infradead.org, 
	Fabio Estevam <festevam@gmail.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Stephen Boyd <sboyd@kernel.org>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Vincenzo Frascino <vincenzo.frascino@arm.com>, linux-renesas-soc@vger.kernel.org, 
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>, Magnus Damm <magnus.damm@gmail.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Viresh Kumar <vireshk@kernel.org>, Pengutronix Kernel Team <kernel@pengutronix.de>, zhouyanjie@wanyeetech.com, 
	Claudiu Beznea <claudiu.beznea@tuxon.dev>, Heiko Stuebner <heiko@sntech.de>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, linux-pm@vger.kernel.org, 
	linux-mediatek@lists.infradead.org, Chen-Yu Tsai <wens@csie.org>, 
	linux-mips@vger.kernel.org, imx@lists.linux.dev, 
	Samuel Holland <samuel@sholland.org>, Sudeep Holla <sudeep.holla@arm.com>, Nishanth Menon <nm@ti.com>, 
	devicetree@vger.kernel.org, Thomas Bogendoerfer <tsbogend@alpha.franken.de>, 
	linux-arm-msm@vger.kernel.org, Nicolas Ferre <nicolas.ferre@microchip.com>, 
	linux-amlogic@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>, 
	Steen Hegelund <Steen.Hegelund@microchip.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250410_071136_823470_AE96B416 
X-CRM114-Status: GOOD (  14.37  )
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

T24gRnJpLCBBcHIgNCwgMjAyNSBhdCA5OjU24oCvQU0gUm9iIEhlcnJpbmcgKEFybSkgPHJvYmhA
a2VybmVsLm9yZz4gd3JvdGU6Cj4KPgo+IE9uIFRodSwgMDMgQXByIDIwMjUgMjE6NTk6MzUgLTA1
MDAsIFJvYiBIZXJyaW5nIChBcm0pIHdyb3RlOgo+ID4gUmVwbGFjZSB0aGUgcHJvc2UgZm9yIHBy
b3BlcnRpZXMgZGVwZW5kZW50IG9uIHNwZWNpZmljICJlbmFibGUtbWV0aG9kIgo+ID4gdmFsdWVz
IHdpdGggc2NoZW1hcyBkZWZpbmluZyB0aGUgc2FtZSByZXF1aXJlbWVudHMuCj4gPgo+ID4gQm90
aCAicWNvbSxhY2MiIGFuZCAicWNvbSxzYXciIHByb3BlcnRpZXMgYXBwZWFyIHRvIGJlIHJlcXVp
cmVkIGZvciBhbnkKPiA+IG9mIHRoZSBRdWFsY29tbSBlbmFibGUtbWV0aG9kIHZhbHVlcywgc28g
dGhlIHNjaGVtYSBpcyBhIGJpdCBzaW1wbGVyCj4gPiB0aGFuIHdoYXQgdGhlIHRleHQgc2FpZC4g
VGhlIHJlZmVyZW5jZXMgdG8gYXJtL21zbS9xY29tLHNhdzIudHh0IGFuZAo+ID4gYXJtL21zbS9x
Y29tLGtwc3MtYWNjLnR4dCBhcmUgb3V0IG9mIGRhdGUsIHNvIGp1c3QgZHJvcCB0aGVtLgo+ID4K
PiA+IFNpZ25lZC1vZmYtYnk6IFJvYiBIZXJyaW5nIChBcm0pIDxyb2JoQGtlcm5lbC5vcmc+Cj4g
PiAtLS0KPiA+ICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL2NwdXMueWFt
bCB8IDgyICsrKysrKysrKysrKysrKy0tLS0tLS0tLS0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgNDkg
aW5zZXJ0aW9ucygrKSwgMzMgZGVsZXRpb25zKC0pCj4gPgo+Cj4gTXkgYm90IGZvdW5kIGVycm9y
cyBydW5uaW5nICdtYWtlIGR0X2JpbmRpbmdfY2hlY2snIG9uIHlvdXIgcGF0Y2g6Cj4KPiB5YW1s
bGludCB3YXJuaW5ncy9lcnJvcnM6Cj4KPiBkdHNjaGVtYS9kdGMgd2FybmluZ3MvZXJyb3JzOgo+
IC9idWlsZHMvcm9iaGVycmluZy9kdC1yZXZpZXctY2kvbGludXgvRG9jdW1lbnRhdGlvbi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL3NvYy9xY29tL3Fjb20sc2F3Mi5leGFtcGxlLmR0YjogY3B1QDA6ICdx
Y29tLGFjYycgaXMgYSByZXF1aXJlZCBwcm9wZXJ0eQo+ICAgICAgICAgZnJvbSBzY2hlbWEgJGlk
OiBodHRwOi8vZGV2aWNldHJlZS5vcmcvc2NoZW1hcy9hcm0vY3B1cy55YW1sIwoKQW55IFFjb20g
Zm9sa3Mgd2FudCB0byB0ZWxsIG1lIHdoZXRoZXIgYm90aCBxY29tLGFjYyBhbmQgcWNvbSxzYXcg
YXJlCnJlcXVpcmVkIG9yIG5vdD8gQWxsIHRoZSBhY3R1YWwgdXNlcnMgaGF2ZSBib3RoLgoKUm9i
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==
