Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CAB49D3B7D1
	for <linux-rockchip@archiver.kernel.org>; Sat,  6 Dec 2025 09:52:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+SkXTVWuXeydCjP0aXKNgxHknEUj/vd+8VQ31Z/262M=; b=mHd87OZILKfKAC
	+z7mvuM4k7mEvo9ekq14p7L9za+rjl7Gs6VDhKrzwt+Ch0OJeVFh9XdKc1VmClYjYZjHlBgs1kpyI
	1WstNNeHJn/x5LVQJl8YhInTEaqucDv4TlvR244iMQJ0Vueb2PGJyyYNuXdHPr0qBmP3w5zTOxfN1
	9r3cFDPYf1hgrUyIl5lRCzSPUnVsYtW7j5AYIji5fYL2SCR6+QmeB36828WGMZc1I86NZesh/lwZU
	n1bE1Z1wSxJOEBpCw8NLR8N935ifB5ifQT/4fyx+IrWTPSdyTm0SzQKD6tzdOZgACqCcPS3nxV3la
	FXwdG2dJEMaYIWQrbcwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRoxs-0000000AnFU-1B2e;
	Sat, 06 Dec 2025 09:52:32 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRoxo-0000000AnF1-1S26
	for linux-rockchip@lists.infradead.org;
	Sat, 06 Dec 2025 09:52:30 +0000
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-477a2ab455fso36031495e9.3
        for <linux-rockchip@lists.infradead.org>; Sat, 06 Dec 2025 01:52:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765014746; x=1765619546; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=iiDwBzndnl96hSb/q/NLb44uNYBwPkjb4oD5H7teprs=;
        b=nRtNgN6IR0YQXJLb6vgnyurAod9bGmSwOen506ppN7hiQ9fyUemecCZBz0PGIDE46k
         4IiF9g/4n7w/69qKD+C3gNHaaV5A8yaXLvzm75ArC9zZP1TWbOXwCAoD8f2jhNUOvi5P
         5Qi/F56mB82ezQuDrq4FmtdHVV/6Q3azmvX5vJ0O5Tu6vgQK0iUcaiw/vNUgz3UdYrPJ
         78D2LZehs03JBQt735Qw6gMAIYk5iE0LxQioytNAoymHsvalLADRmcktKfOltRgg0pfa
         dApOYy7KpvhTOx+C8vJHUJ9hmAgSY1AXqqfNcc8c5szNx8+TtD8u+dRbCnH71eNkePUf
         pq+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765014746; x=1765619546;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iiDwBzndnl96hSb/q/NLb44uNYBwPkjb4oD5H7teprs=;
        b=ct63WN3t3KqDL+vGNU54MjbzQ/OMBpMIGZafkrGyXFBjNJfkwbvlK4RP3FpA+rVaBE
         0DcbJlPRlvadYzN85/oNXx749jDIyiamxv5dITZn2NUvc7h+irwPQAltH5aTikAcIOxZ
         rXlVQbh1fei3r64lRg3yzDRMRmZ4QpXm7e7MPniSLhe4yLlTQUsyWPI/F4jrZUvVChNd
         qPVo/NL63fqqHzS03sG1DHfHn8SlToKjHtPRqUiQdCV8TzE30Ow8flMvTRhj0sFyq/At
         6YeuSJfYsg9da0EyvpsQLJNrIOsLFVuV4tQYqkE+huaebdM55fT1CUaY4dDKbvJuu2d5
         rYig==
X-Forwarded-Encrypted: i=1; AJvYcCVwus9nOFqIvMtih90+j7SIzaeTrSKg13g5FrUedrBu1xGoDJ7GDHM6gWtugnEnqG3DG3SNl1tJk396+TpozA==@lists.infradead.org
X-Gm-Message-State: AOJu0YxRBjAdJSEc55ivQmkAPaN/XrgutHzLBPwmeBgRToMMrVTQrRX3
	9s7R5nZCTRQvuaYIdKEZXDrsHfv7KlZMyuB16+SY5cnvG+Kyf8hDhkSP65i7eP8kIl4=
X-Gm-Gg: ASbGncuoJ3kVUW0BeoFBI7yWWvL/+RZBIEkRjPigTGn2Mq/7z7jsh9ngbAf0FhZaVCy
	XX0qOCzQSh+vt1tnACAugWT/o4yFCgzytdt1vn3+Kyf0o0Y4u9PPbPNjEsBCqTDntHMB1YiBwRD
	OFtEQZUn9Oh8agCUbwR1HcMlIBbA32pOZcZBJFRGzlTxpmYhYP13UYU0GwhrqVNaz1iYhFf6HaS
	0fIhtXCtTqnwK/pH3ANe9lMsyO/xPgV1YKfmPP/wfO9k2GiMIqdNaXWH/TcH8ik1S28wrfAncyA
	g4aq4+zM/+S/1J4igmVAzQdQBGg393kyv2wUUmM3lprncSVICKsOmZeNR3PzNXLgAB8D9ZLgrSH
	TcyNq5hNacqrVrYALndV6/EVqza71eZ4jfvivSG01heRLnDg46qPD57V4YzMwqHffPEgaMPV6sQ
	7bLYxIQLO6fW03TIM=
X-Google-Smtp-Source: AGHT+IHCCSKpPzDS66jMH4ALE7X9BZR5z4AUj5KRqSpHUrEc/DwbowSb3EPWCQS5cwLW9Z47DlGV3A==
X-Received: by 2002:a05:600c:1c0c:b0:477:5cc6:7e44 with SMTP id 5b1f17b1804b1-47939dfa46dmr19757195e9.11.1765009694011;
        Sat, 06 Dec 2025 00:28:14 -0800 (PST)
Received: from toolbox.. ([87.200.95.144])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-479310a6d9dsm123094705e9.2.2025.12.06.00.28.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 06 Dec 2025 00:28:13 -0800 (PST)
From: Christian Hewitt <christianshewitt@gmail.com>
To: Detlev Casanova <detlev.casanova@collabora.com>,
	=?UTF-8?q?Olivier=20Cr=C3=AAte?= <olivier.crete@collabora.com>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Diederik de Haas <diederik@cknow-tech.com>,
	Dmitry Osipenko <dmitry.osipenko@collabora.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Dragan Simic <dsimic@manjaro.org>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/4] media: rockchip: rkvdec: add support for the VDPU346 variant
Date: Sat,  6 Dec 2025 08:28:05 +0000
Message-Id: <20251206082809.2040679-1-christianshewitt@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251206_015229_019212_11A798BE 
X-CRM114-Status: GOOD (  15.39  )
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

VGhpcyBzZXJpZXMgZGVwZW5kcyB1cG9uIERldGxldiBDYXNhbm92YSdzIGN1cnJlbnQgdjUgc2Vy
aWVzIGZvciBWRFBVMzgxIGFuZApWRFBVMzgzIHN1cHBvcnQgWzBdLiBQYXRjaCAxIGlzIG1hcmtl
ZCBETy1OT1QtTUVSR0UgYXMgaXQgY29udGFpbnMgZml4dXBzCmZvciBtaW5vciBuaXRzIHNwb3R0
ZWQgaW4gRGV0bGV2J3Mgc2VyaWVzLiBJJ3ZlIGZsYWdnZWQgdGhlbSBvbiBJUkMgYWZ0ZXIgdjIK
YnV0IHRoZSBtZXNzYWdlcyBtYXkgaGF2ZSBiZWVuIG1pc3NlZCBhcyB0aGV5IGFyZSBzdGlsbCBw
cmVzZW50IGluIHY1LgoKUGF0Y2hlcyAyLzMvNCBhZGQgc3VwcG9ydCBmb3IgdGhlIFZEUFUzNDYg
SVAgYmxvY2sgdXNlZCBmb3IgSDI2NCwgSEVWQyBhbmQKKGluIGZ1dHVyZSB3b3JrKSBWUDkgb24g
dGhlIFJLMzU2WCBib2FyZHMuIFZEUFUzNDYgYXBwZWFycyB0byBiZSBhIGNsb3NlCnJlbGF0aW9u
IHRvIFZEUFUzODEgdXNlZCB3aXRoIFJLMzU4OCwgZXhjZXB0IHdpdGggYSBzaW5nbGUgY29yZSwg
b3V0cHV0CmxpbWl0ZWQgdG8gNEssIGFuZCBtaW5vciBmZWF0dXJlIGRpZmZlcmVuY2VzLCBlLmcu
IEhFVkMgbGV2ZWwgNS4xIG9uIFZEUFUzNDYKdnMgNi4xIG9uIFZEUFUzODEuIFRvIGhhbmRsZSBk
aWZmZXJlbmNlcyB3ZSBkZWNsYXJlIGEgbmV3IGNvbXBhdGlibGUuCgpUaGUgZGV2aWNlLXRyZWUg
Y2hhbmdlcyBhcmUgZGVyaXZlZCBmcm9tIHByaW9yLWFydCBpbiBEZXRsZXYncyBwYXRjaGVzIGZv
cgpSSzM1NzYgYW5kIFJLMzU4OCwgdGhlIHZlbmRvciBrZXJuZWwgWzFdLCBhbmQgc29tZSBlYXJs
aWVyIHBhdGNoIGF0dGVtcHRzCmZyb20gUGlvdHIgT25pc3pjenVrIGFuZCBEaWVkZXJpayBkZSBI
YWFzLgoKVGhlIHJlZ2lzdGVyIGRpZmZlcmVuY2VzIGJldHdlZW4gVkRQVTM0NiBhbmQgVkRQVTM4
MSBhcHBlYXIgdG8gYmUgbWluaW1hbCBzbwp3ZSBjdXJyZW50bHkgYW5kIGludGVudGlvbmFsbHkg
cmV1c2UgdGhlIFZEUFUzODEgaDI2NCwgaGV2YywgYW5kIHJlZ3MgZmlsZXMKdG8gYXZvaWQgZHVw
bGljYXRpbmcgY29kZS4gSWYgZnVydGhlciByZWdpc3RlciBhbmFseXNpcyByZXF1aXJlcyBzZXBh
cmF0ZQpmaWxlcyBmb3IgVkRQVTM0NiB0aGUgcmVmYWN0b3JpbmcgdG8gRGV0bGV2J3MgZHJpdmVy
cyBpcyBhIGxpdHRsZSBiZXlvbmQgbXkKY3VycmVudCBiZWdpbm5lciBsZXZlbCBjIHNraWxscy4g
QXMgdGhlIG92ZXJhbGwgbWlub3IgY2hhbmdlc2V0IHRvIFZEUFUzODEKaXQgd291bGQgYmUgYXdl
c29tZSBpZiB0aGlzIHNlcmllcyBjb3VsZCBiZSBhYnNvcmJlZC4gSSBoYWQgc29tZSBkaXNjdXNz
aW9uCndpdGggT2xpdmllciBDcsOqdGUgZHVyaW5nIFZpZGVvTGFuIERldiBEYXlzIGxhc3QgbW9u
dGggdGhhdCBzdWdnZXN0ZWQgdGhpcwptaWdodCBiZSBwb3NzaWJsZT8gLSBoZW5jZSBzZW5kaW5n
IG5vdy4gSWYgbm90LCBJJ2xsIHdhaXQgdW50aWwgRGV0bGV2J3MKc2VyaWVzIGhhcyBiZWVuIG1l
cmdlZCBiZWZvcmUgc2VuZGluZyBhIG5leHQgaXRlcmF0aW9uIG9mIHRoZXNlIHBhdGNoZXMuCgpU
ZXN0aW5nIHdpdGggSmVsbHlmaXNoIGZpbGVzIG9mIHZhcnlpbmcgYml0cmF0ZXMgc2hvd3MgdGhh
dCBSSzM1Nlggc3RhcnRzCnRvIGV4cGVyaWVuY2UgamVya3kgcGxheWJhY2sgYWJvdmUgMTBtYnBz
LCB3aGljaCBzZWVtcyByYXRoZXIgbG93IGNvbXBhcmVkCnRvIFJLMzU4OCB3aGljaCBjYW4gcGxh
eSAzMDBtYnBzIG1lZGlhIHdpdGhvdXQgaXNzdWVzLiBUaGUgdmVuZG9yIGtlcm5lbApkb2N1bWVu
dHMgJ2FkdmFuY2VkJyBhc3NpZ25lZC1jbG9jay1yYXRlcyBidXQgaW5jcmVhc2luZyB0aGVtIGRv
ZXMgbm90IGhhdmUKYW55IG9idmlvdXMgaW1wYWN0IHNvIHRoZSBkaWZmZXJlbmNlIGxvb2tzIHRv
IGJlIHNvbWV0aGluZyBkZWVwZXIuIE5COiBUaGUKc2FtZSBpcyBhbHNvIHNlZW4gd2l0aCBEZXRs
ZXYncyBwYXRjaGVzIGZvciBSSzM1NzYgKG1heCAxNW1wYnMpIHNvIGZ1cnRoZXIKb3IgZm9sbG93
LXVwIHdvcmsgaXMgbGlrZWx5IHJlcXVpcmVkLiBEZXNwaXRlIHRoZSBhcHBhcmVudCBsaW1pdGF0
aW9uIHJlYWwtCndvcmxkIG1lZGlhIGZyb20gbXkgY29sbGVjdGlvbiBwbGF5cyB3ZWxsLgoKWzBd
IGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcHJvamVjdC9saW51eC1yb2NrY2hpcC9saXN0
Lz9zZXJpZXM9MTAxNTIyMQpbMV0gaHR0cHM6Ly9naXRodWIuY29tL3JvY2tjaGlwLWxpbnV4L2tl
cm5lbC9ibG9iL2RldmVsb3AtNi42L2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTZ4
LmR0c2kjTDE1MzkKCkNocmlzdGlhbiBIZXdpdHQgKDQpOgogIG1lZGlhOiBya3ZkZWM6IG1pbm9y
IGZpeGVzIGZvciBjdXJyZW50IERFVExFViBwYXRjaGVzCiAgbWVkaWE6IGR0LWJpbmRpbmdzOiBy
b2NrY2hpcDogQWRkIFJLMzU2OCBWaWRlbyBEZWNvZGVyIGJpbmRpbmdzCiAgbWVkaWE6IHJrdmRl
YzogQWRkIHN1cHBvcnQgZm9yIHRoZSBWRFBVMzQ2IHZhcmlhbnQKICBhcm02NDogZHRzOiByb2Nr
Y2hpcDogQWRkIHRoZSB2ZHB1MzQ2IFZpZGVvIERlY29kZXJzIG9uIFJLMzU2WAoKIC4uLi9iaW5k
aW5ncy9tZWRpYS9yb2NrY2hpcCx2ZGVjLnlhbWwgICAgICAgICB8ICAgMiArCiBhcmNoL2FybTY0
L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2eC1iYXNlLmR0c2kgfCAgNDkgKysrKysrKysKIC4uLi9y
b2NrY2hpcC9ya3ZkZWMvcmt2ZGVjLXZkcHUzODEtcmVncy5oICAgICB8ICAgNCArLQogLi4uL3Jv
Y2tjaGlwL3JrdmRlYy9ya3ZkZWMtdmRwdTM4My1oZXZjLmMgICAgIHwgICA2ICstCiAuLi4vbWVk
aWEvcGxhdGZvcm0vcm9ja2NoaXAvcmt2ZGVjL3JrdmRlYy5jICAgfCAxMTAgKysrKysrKysrKysr
KysrKysrCiA1IGZpbGVzIGNoYW5nZWQsIDE2NiBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygt
KQoKLS0gCjIuMzQuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcm9ja2NoaXAK
