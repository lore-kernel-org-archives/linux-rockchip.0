Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9FFDAF9D0D8
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Apr 2026 21:41:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MxGofX8bAJ2opYfNJWC4y+nNTyue0xBebqAW7RjhlUY=; b=WSMkAVGkjPQ3sC
	nwTwvW38bg2LyO9Hsa/d/ghhWShX9oIE/eb6IRThE3r54DVwFhQAcgg6jOFQ9+vRxXKzxvX21xBxZ
	78gDJh4qBhTa/HIb0OcXEerFxYU/EWpTVuO59EpX88ZB0bJu81ggPGivq7aV4EE7C2sqY7jUpSVMe
	CU/hn4LAVGL/vSErQtAZy9Rdx/+P7WW+0ZGlgLCdrvkjzZ6jEcWJAnnUqu35Ss37EYK3C5cV8+FRt
	YIHOMzSWWNNtbhIjkg4WsUNkNPUXsIWLJpWwfyFcz5oK3XEiVtQZlIAz7ngjv2Iku/lr79HBk+ryA
	LIH9FuZDMM5/BbpcBjoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wClVQ-00000000FcA-4B1v;
	Tue, 14 Apr 2026 21:41:13 +0000
Received: from mail-vs1-xe64.google.com ([2607:f8b0:4864:20::e64])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wClVO-00000000FaH-2G8G
	for linux-rockchip@lists.infradead.org;
	Tue, 14 Apr 2026 21:41:11 +0000
Received: by mail-vs1-xe64.google.com with SMTP id ada2fe7eead31-6120528b8b4so272158137.0
        for <linux-rockchip@lists.infradead.org>; Tue, 14 Apr 2026 14:41:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ausil.us; s=google; t=1776202868; x=1776807668; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=9sQVj34tJCzHG+OSzAE6qEOKAh1LdGOwM6EDuxjty+c=;
        b=Lsb5pwIT2gwRI5VrQMAJURizFAlYOhRUk2EzbtOck+ynbB2pufImVZzw8sVHrNQTKf
         EI3BkT0w6KwOaFRSb3rci92YxD5TGUzu84pPrqj7mNKmN87zAqY6zycSKBR4145PJKRF
         rdtEkpEJhY3y4Lu8AAkHhCtedFBmPrtCKlZ0XJl2eHRITZCmI+jYoZ6dHpdcam4ZAh0K
         R9OS80AV+aGIFN2VZkRpiHyIDxF+wo7FU9sCsorKly5w4tTeaxmTpzi05/WzSQH1qjY6
         OF91mNf7PNzQnCzgrZUsNFeFK3iDypKKNnOJwi6ghBbpaqnzgZo79qHXKJPIRj/lCYkb
         n0Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776202868; x=1776807668;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9sQVj34tJCzHG+OSzAE6qEOKAh1LdGOwM6EDuxjty+c=;
        b=h0OdVOpGz7q2BS0VyosSWeLFrv/1vGz7jw+YjidJTWCZAzlMd39AvJTOlGG3HuiCib
         9S6h1V55NRGu3OTicBk1BA5Ky9fypXGe+Njeh+dlLKKkiZLszyAR6HdP6N+KUbTlZbDH
         UnPBlndb2cbl+tD62fgUKpoXmWvQZzIs/EXGVBAdjjv72D3RB+0Yiagz5Wb17pRcDGEm
         SCdJWVTXwqQ1yjIxVkPyPhOFTf2iz781kcCfrn5ZF/SdJteX+gD/bAL0k8ROqoEWku7s
         z9zfaLSOdddVqfJv7fWDcrxZeP2W0TMIhBQ7ld5JHUL7KZlWhkPIHK7WCFNRGwO6Vrwi
         1q9g==
X-Forwarded-Encrypted: i=1; AFNElJ/x6dNZfOVt6AzYGmTgOgxTUQk+4F2BDWpZnlnz7FEwaZoNGJvXGuq6dNLZFRaRA+vXvYhqhmK7xuZDE3KorQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YyQRTkyQAYorSKAWwSrurM0E70Lgt8jbFyrs/V1cR/GW2yjn0lO
	roVtb4+YWCJsWEY6nrud14kHFHhcM8bAKxU11HTn1kDdfGxo0LJWQj3NbIl2LFqn8GZRz6GZ/F1
	HUOQkILn1gbnG0hsiP4OZYbtE64W3VPOAG5LX
X-Gm-Gg: AeBDieufTKdTP3yJBMkGMjDcW41TwU3whyN2B4S7tXhPXGXu15Z3QEkWi+YshsHluy6
	ANjjDKOxN3e0kv4it5JUT0ckeVYAl5ioyYOyKcYuEBd4W9ETmnq/sG3WsFaQO3g8V9c4tl5UMtE
	9w3sEnTDEOlrEvyV+bRupkBUry3dLuXEh1epDgcwilAuJGj5boAOmFik5VhHxLN50SbiyKXV+Nu
	xnnT/8X/5pI5sCkl32SDYvaou4vxSEmLdOIa9lssXwI386j6r65hb+dDR8Xm2MlNb5VX1ialDSC
	2QisMSLeorLal3q26xwb3BQ7hsXakUhdAS+I9QthNfLW115gs/O05EB4eavXGqsY/tzxWpsH4gZ
	Pfn+JkSIRFxF3QX6UV2SmNQ/E1yEPV2AiBTCO1WTeCHeYUk5prMiJDtA=
X-Received: by 2002:a05:6102:10ce:b0:60a:9cac:d286 with SMTP id ada2fe7eead31-60a9cacdb01mr5997352137.12.1776202868454;
        Tue, 14 Apr 2026 14:41:08 -0700 (PDT)
Received: from ryac.ausil.us (207-179-239-100.mtco.net. [207.179.239.100])
        by smtp-relay.gmail.com with ESMTPS id a1e0cc1a2514c-95691131afesm346899241.1.2026.04.14.14.41.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Apr 2026 14:41:08 -0700 (PDT)
X-Relaying-Domain: ausil.us
From: Dennis Gilmore <dennis@ausil.us>
To: 
Cc: Alexey Charkov <alchark@gmail.com>,
	Andrew Lunn <andrew@lunn.ch>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Chaoyi Chen <chaoyi.chen@rock-chips.com>,
	Conor Dooley <conor+dt@kernel.org>,
	David Airlie <airlied@gmail.com>,
	Dennis Gilmore <dennis@ausil.us>,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	FUKAUMI Naoki <naoki@radxa.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Hsun Lai <i@chainsx.cn>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Jimmy Hon <honyuenkwun@gmail.com>,
	John Clark <inindev@gmail.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Michael Opdenacker <michael.opdenacker@rootcommit.com>,
	Michael Riesch <michael.riesch@collabora.com>,
	Mykola Kvach <xakep.amatop@gmail.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Peter Robinson <pbrobinson@gmail.com>,
	Quentin Schulz <quentin.schulz@cherry.de>,
	Robert Foss <rfoss@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Simona Vetter <simona@ffwll.ch>,
	Thomas Zimmermann <tzimmermann@suse.de>
Subject: [PATCH v7 0/6] Add support for Orange Pi 5 Pro
Date: Tue, 14 Apr 2026 16:40:51 -0500
Message-ID: <20260414214104.1363987-1-dennis@ausil.us>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260414_144110_600228_223FBB4E 
X-CRM114-Status: GOOD (  18.76  )
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

VGhpcyBzZXJpZXMgYWRkcyBpbml0aWFsIHN1cHBvcnQgZm9yIE9yYW5nZSBQaSA1IFByby4gVGhl
IFBDSWUgYXR0YWNoZWQKbmV0d29yayBkcml2ZXIoZHdtYWMtbW90b3Jjb21tKSB3YXMganVzdCBh
ZGRlZC4KClRoZSBzZXJpZXMgd2FzIHRlc3RlZCBhZ2FpbnN0IExpbnV4IDcuMC1yYzcKClBsZWFz
ZSB0YWtlIGEgbG9vay4KClRoYW5rIHlvdSwKCkRlbm5pcyBHaWxtb3JlCgpDaGFuZ2VzIGluIHY3
OgotIEZpeCB1cCB3aGl0ZXNwYWNlIGlzc3VlcyBpZGVudGlmaWVkIGJ5IGNoZWNrcGF0Y2gucGwg
LS1zdHJpY3QgaW4KICByazM1ODhzLW9yYW5nZXBpLTUtNWIuZHRzaQotIGNoZWNrcGF0Y2ggZ2F2
ZSBhIHdhcm5pbmcgZm9yIFdBUk5JTkc6IHBoeS1tb2RlICJyZ21paS1yeGlkIiB3aXRob3V0CiAg
Y29tbWVudCwgYXMgdGhpcyB3YXMgbW92ZWQgb3ZlciBJIGxlZnQgaXQgdW50b3VjaGVkCi0gQWRk
ZWQgbG9udGl1bSxsdDg3MTF1eGQgdG8gdGhlIGNvbXBhdGlibGUgZW51bSBpbiB0aGUgc2ltcGxl
LWJyaWRnZQogIGJpbmRpbmcKLSBBZGRlZCBsb250aXVtLGx0ODcxMXV4ZCBtYXRjaCBlbnRyeSB3
aXRoIERSTV9NT0RFX0NPTk5FQ1RPUl9IRE1JQSB0bwogIHRoZSBzaW1wbGUtYnJpZGdlIGRyaXZl
cgotIE5ldyBwYXRjaCB0byByZW5hbWUgdGhlIHJlZ3VsYXRvciBsYWJlbHMgZm9yIHRoZSBlczgz
ODggc3VwcGxpZXMgdG8KICBtYXRjaCB0aGUgc2NoZW1hdGljcyBhcyB0aGV5IGFsbCB1c2UgdmNj
YV8qCi0gUks4MDYgUExETzEgYW5kIFBMRE8yIG91dHB1dHMgYXJlIHN3YXBwZWQgYmV0d2VlbiB0
aGUgNS81QiBhbmQgcHJvLgogIG1vdmUgdGhlaXIgZGVmaW5pdGlvbiB0byB0aGUgc2hhcmVkIDUv
NUIgZHRzaSBhbmQgNSBQcm8gZHRzCi0gRml4ZWQgRVM4Mzg4IFBWREQtc3VwcGx5IOKAlCB2Y2Nh
XzN2M19zMCDihpIgdmNjYV8xdjhfczAsIDUgUHJvIGlzCiAgZGlmZmVyZW50IHRvIDUgYW5kIDVi
LgotIGFuYWxvZy1zb3VuZDogdXNlIENQVS1hcy1jbG9jay1tYXN0ZXIgb24gdGhlIFByby4gVGhl
IEVTODM4OCBpcyB3aXJlZCB0bwogIGkyczJfMmNoICh0aGUgb25seSBJMlMgYmxvY2sgcGh5c2lj
YWxseSByb3V0ZWQgdG8gdGhlIGNvZGVjIHBpbnMgb24gdGhpcwogIGJvYXJkKSwgd2hpY2ggdXNl
cyB0aGUgbGVnYWN5IHJvY2tjaGlwX2kycyBkcml2ZXIuIFRoYXQgZHJpdmVyJ3MKICBzbGF2ZS1t
b2RlIHRyaWdnZXIgcGF0aCBoYW5ncyBmb3IgMjAwIMK1cyBwb2xsaW5nIEkyU19DTFIgYW5kIGJh
aWxzIHdpdGgKICAtRVRJTUVET1VUICgibHJjbGsgdXBkYXRlIGZhaWxlZCIpLiBUaGUgVERNLWNh
cGFibGUgaTJzMC9pMnMxL2kyczUKICBibG9ja3Mgc2VydmVkIGJ5IHJvY2tjaGlwX2kyc190ZG0g
ZG9uJ3QgaGF2ZSB0aGlzIGlzc3VlLCB3aGljaCBpcyB3aHkKICBvdGhlciBtYWlubGluZSBFUzgz
ODggYm9hcmRzIGdldCBhd2F5IHdpdGggYml0Y2xvY2stbWFzdGVyID0gbWFzdGVyZGFpLgogIERy
b3AgYml0Y2xvY2stbWFzdGVyL2ZyYW1lLW1hc3RlciBhbmQgdGhlIG1hc3RlcmRhaSBsYWJlbCB0
byBsZXQgdGhlIEkyUwogIGJsb2NrIGdlbmVyYXRlIEJDTEsvTFJDSyBpdHNlbGYKLSBBZGRlZCBw
aW5jdHJsIGVudHJpZXMgZm9yIGFsbCBHUElPIHBpbnMgKGRwX2JyaWRnZV9lbiwgdmNjM3YzX3Bo
eTFfZW4sCiAgd2lmaV9lbmFibGVfaCwgcGNpZTJ4MWwxX3JzdCwgcGNpZTJ4MWwyX3JzdCkKLSBE
UCBicmlkZ2UgcmV3b3JrIOKAlCByZXBsYWNlZCBkcC1jb25uZWN0b3Igbm9kZSB3aXRoIHByb3Bl
ciBjaGFpbjoKICAgIC0gbHQ4NzExdXhkIGJyaWRnZSBub2RlIChjb21wYXRpYmxlIGxvbnRpdW0s
bHQ4NzExdXhkLCB3aXRoIHBvcnRAMC9wb3J0QDEKICAgICAgZW5kcG9pbnRzKS4gQnJpZGdlIHBv
d2VyIGlzIGdhdGVkIGJ5IHRoZSB2Y2MzdjNfZHAgcmVndWxhdG9yLCB3aG9zZQogICAgICBlbmFi
bGUgR1BJTyAoR1BJTzNfUEMyKSBpcyBkcml2ZW4gdmlhIHRoZSBkcF9icmlkZ2VfZW4gcGluY3Ry
bCBncm91cDsKICAgICAgbm8gZW5hYmxlLWdwaW9zL3ZkZC1zdXBwbHkgb24gdGhlIGJyaWRnZSBu
b2RlIGl0c2VsZi4KICAgIC0gaGRtaTEtY29uIGNvbm5lY3RvciBub2RlIChjb21wYXRpYmxlIGhk
bWktY29ubmVjdG9yLCB0eXBlIGEpCiAgICAtIGRwMF9vdXQgZW5kcG9pbnQgbm93IHBvaW50cyB0
byBicmlkZ2UgaW5wdXQgaW5zdGVhZCBvZiBvbGQgY29ubmVjdG9yCi0gZHJvcCBhY2NpZGVudGFs
bHkgaW5jbHVkZWQsIHVucmVsYXRlZCBjaGFuZ2VzIHRvCiAgZHJpdmVycy9ncHUvZHJtL2JyaWRn
ZS9zeW5vcHN5cy9kdy1kcC5jIGFuZAogIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9kaXNwbGF5L3JvY2tjaGlwL3JvY2tjaGlwLGR3LWRwLnlhbWwKLSBsaW5rIHRvIHY2IGh0dHBz
Oi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LWRldmljZXRyZWUvMjAyNjA0MTEwMjQ3NDMuMTk1Mzg1
LTEtZGVubmlzQGF1c2lsLnVzLwoKQ2hhbmdlcyBpbiB2NjoKLSBNb3ZlIHRoZSBzaGFyZWQgY29u
ZmlncyBmb3IgdGhlIE9yYW5nZSBQaSA1IGFuZCBPcmFuZ2UgUGkgNWIgZnJvbSBlYWNoCiAgZGV2
aWNlcyBkdHMgdG8gYSBzaGFyZWQgcmszNTg4cy1vcmFuZ2VwaS01LTViLmR0c2kgdG8gYXZvaWQg
ZHVwbGljYXRpb24KLSBSZW1vdmUgZW1wdHkgcG9ydHMgc3Vibm9kZWlzIGZyb20gdHlwZWFfY29u
Ci0gTW92ZSBpMnMybTFfbWNsayBwaW5jdHJsIGZyb20gJmkyczIgdG8gdGhlIGVzODM4OCBjb2Rl
YyBub2RlCi0gQWRkIGRwLWNvbiwgZHAwX291dCwgZHAwX2luLCBhbmQgdnAxIG5vZGVzLCBwbHVz
IHRoZSB2Y2MzdjNfZHAgcmVndWxhdG9yCiAgaW4gb3JkZXIgdG8gZ2V0IHRoZSBzZWNvbmQgSERN
SSBwb3J0IHdvcmtpbmcgdmlhIGl0cyB0cmFuc3BhcmVudAogIExUODcxMVVYRCBEUCB0byBIRE1J
IGJyaWRnZQotIGxpbmsgdG8gdjUgaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtZGV2aWNl
dHJlZS8yMDI2MDQwMTAxMDcwNy4yNTg0OTYyLTEtZGVubmlzQGF1c2lsLnVzLwoKQ2hhbmdlcyBp
biB2NToKLSBkZWZpbmUgYSBjb25uZWN0b3Igbm9kZSBmb3IgVHlwZS1BIHBvcnQsIGFuZCBsaXN0
IHRoZSByZWd1bGF0b3IgYXMgaXRzIFZCVVMgc3VwcGx5IGV4cGxpY2l0bHkuCi0gUmVxdWlyZXMg
aHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjYwMjE3LXR5cGVhLXZidXMtdjEtMS02NTdi
NGU1NWE0YzJAZmxpcHBlci5uZXQvCi0gbGluayB0byB2NCBodHRwczovL2xvcmUua2VybmVsLm9y
Zy9saW51eC1kZXZpY2V0cmVlLzIwMjYwMzEwMDMxMDAyLjM5MjEyMzQtMS1kZW5uaXNAYXVzaWwu
dXMvCgpDaGFuZ2VzIGluIHY0OgotIHJlbmFtZSB2Y2MzdjNfcGNpZTIwIGNvcGllZCBmcm9tIHJr
MzU4OHMtb3JhbmdlcGktNS5kdHMgdG8gdmNjM3YzX3BoeTEgdG8gbWF0Y2ggdGhlIHNjaGVtYXRp
YwotIHVzZSB2Y2NfM3YzX3MzIGFzIHRoZSBzdXBwbHkgbm90IHZjYzV2MF9zeXMgZm9yIFBDSWUK
LSByZW1vdmUgdGhlIGRlZmluaXRpb24gZm9yIHZjYzN2M19wY2llX20yIGFzIGl0IGRvZXMgbm90
IHJlYWxseSBleGlzdAogIGFzIGEgcmVndWxhdG9yCgotIGxpbmsgdG8gdjMgaHR0cHM6Ly9sb3Jl
Lmtlcm5lbC5vcmcvbGludXgtZGV2aWNldHJlZS8yMDI2MDMwNjAyNDYzNC4yMzk2MTQtMS1kZW5u
aXNAYXVzaWwudXMvCgpDaGFuZ2VzIGluIHYzOgotIG1vdmVkIGxlZHMgZnJvbSBncGlvLWxlZHMg
dG8gcHdtLWxlZHMKLSByZW1vdmUgZGlzYWJsZS13cCBmcm9tIHNkaW8KLSByZW5hbWUgdmNjM3Yz
X3BjaWVfZXRoIHJlZ3VsYXRvciB0byB2Y2MzdjNfcGNpZV9tMiB0byByZWZsZWN0IHRoZQogIHB1
cnBwb3NlCi0gYWN0dWFsbHkgY2xlYW4gdXAgdGhlIGRlbGV0ZSBsaW5lcyBhbmQgY29tbWVudHMg
bWlzc2VkIGluIHYyCi0gbGluayB0byB2MiBodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1k
ZXZpY2V0cmVlLzIwMjYwMzA0MDI1NTIxLjIxMDM3Ny0xLWRlbm5pc0BhdXNpbC51cy8KCkNoYW5n
ZXMgaW4gdjI6Ci0gbW92ZWQgaXRlbXMgbm90IHNoYXJlZCBieSBvcmFuZ2VwaSA1LzViLzUgUHJv
IGZyb20gZHRzaSB0byA1IGFuZCA1YgogIGR0cyBmaWxlcwotIHJlbW92ZWQgYWxsIHRoZSBjb21t
ZW50cyBhbmQgZGVsZXRlZCBwcm9wZXJ0aWVzIGZyb20gNSBQcm8gZHRzCi0gTGluayB0byB2MSBo
dHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1kZXZpY2V0cmVlLzIwMjYwMjI4MjA1NDE4LjI5
NDQ2MjAtMS1kZW5uaXNAYXVzaWwudXMvCgoKRGVubmlzIEdpbG1vcmUgKDYpOgogIGR0LWJpbmRp
bmdzOiBhcm06IHJvY2tjaGlwOiBBZGQgT3JhbmdlIFBpIDUgUHJvCiAgZHQtYmluZGluZ3M6IGRp
c3BsYXk6IGJyaWRnZTogc2ltcGxlOiBkb2N1bWVudCB0aGUgTG9udGl1bSBMVDg3MTFVWEQKICAg
IERQLXRvLUhETUkgYnJpZGdlCiAgZHJtL2JyaWRnZTogc2ltcGxlOiBBZGQgdGhlIExvbnRpdW0g
TFQ4NzExVVhEIERQLXRvLUhETUkgYnJpZGdlCiAgYXJtNjQ6IGR0czogcm9ja2NoaXA6IHJrMzU4
OHMtb3JhbmdlcGktNTogcmVuYW1lIFBMRE8gcmVndWxhdG9yIGxhYmVscwogICAgdG8gbWF0Y2gg
c2NoZW1hdGljCiAgYXJtNjQ6IGR0czogcm9ja2NoaXA6IHJlZmFjdG9yIGl0ZW1zIGZyb20gT3Jh
bmdlIFBpIDUvYiB0byBwcmVwIGZvcgogICAgUHJvCiAgYXJtNjQ6IGR0czogcm9ja2NoaXA6IEFk
ZCBPcmFuZ2UgUGkgNSBQcm8gYm9hcmQgc3VwcG9ydAoKIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdz
L2FybS9yb2NrY2hpcC55YW1sICAgICB8ICAgMSArCiAuLi4vZGlzcGxheS9icmlkZ2Uvc2ltcGxl
LWJyaWRnZS55YW1sICAgICAgICAgfCAgIDEgKwogYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hp
cC9NYWtlZmlsZSAgICAgICAgIHwgICAxICsKIC4uLi9kdHMvcm9ja2NoaXAvcmszNTg4cy1vcmFu
Z2VwaS01LTViLmR0c2kgICB8IDIyMiArKysrKysrKysKIC4uLi9kdHMvcm9ja2NoaXAvcmszNTg4
cy1vcmFuZ2VwaS01LXByby5kdHMgICB8IDQ0MiArKysrKysrKysrKysrKysrKysKIC4uLi9ib290
L2R0cy9yb2NrY2hpcC9yazM1ODhzLW9yYW5nZXBpLTUuZHRzICB8ICAgNiArLQogLi4uL2Jvb3Qv
ZHRzL3JvY2tjaGlwL3JrMzU4OHMtb3JhbmdlcGktNS5kdHNpIHwgMjM1ICstLS0tLS0tLS0KIC4u
Li9ib290L2R0cy9yb2NrY2hpcC9yazM1ODhzLW9yYW5nZXBpLTViLmR0cyB8ICAgMiArLQogZHJp
dmVycy9ncHUvZHJtL2JyaWRnZS9zaW1wbGUtYnJpZGdlLmMgICAgICAgIHwgICA1ICsKIDkgZmls
ZXMgY2hhbmdlZCwgNjk1IGluc2VydGlvbnMoKyksIDIyMCBkZWxldGlvbnMoLSkKIGNyZWF0ZSBt
b2RlIDEwMDY0NCBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OHMtb3JhbmdlcGkt
NS01Yi5kdHNpCiBjcmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hp
cC9yazM1ODhzLW9yYW5nZXBpLTUtcHJvLmR0cwoKLS0gCjIuNTMuMAoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
