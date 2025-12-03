Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F375AD116F3
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Dec 2025 05:42:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UEgm8VXHBQoMTxdu8IGQVrrLTP9voGSjNEgeM3S/OQM=; b=4USuZQTR2Ou6rO
	gNF6v5TbaZ2uO/xSsHDl3aL4d7To8XjJUQ360G6VHCGZAYORKjhjaHC3LAncBfb7m+1e4qLGi+ObE
	ereSAS6dmMF4/l8sNO0eNJPPSn7jPjhlzTHMoCpwnjf31batDHHKcOdcfD+xSYqN/i8P75bzpUtPd
	y4ToIdcz4CZtKb99g0kAiSZySuIq9/e12BVtNMduOPU45WOBHZkJqnruqUMfdTEgZ856sQpOGPuCq
	vCZ5swcdSm+oWOYqdSciWF2SwrcY3CiFhyO378J5ASz84PqZTSB1qok23fvzVKlq93l9d8oYZcq9j
	5W//iU3Jhbsfv6ve5Rtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQfd6-000000068su-2oXZ;
	Wed, 03 Dec 2025 05:42:20 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQfd4-000000068s9-1wCn
	for linux-rockchip@lists.infradead.org;
	Wed, 03 Dec 2025 05:42:19 +0000
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-477ba2c1ca2so71775035e9.2
        for <linux-rockchip@lists.infradead.org>; Tue, 02 Dec 2025 21:42:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764740536; x=1765345336; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PxfbM7kuJoD5VPtlLfzvhUKZY27u02y36QHhwGGHEm4=;
        b=hS+MMQObX81RVU+bLwITyL47GPTlna9QylrpR1O/16gcXO4CpfjSRexlr1+61ZbNRw
         aoIe1d/sky1ddVB1knOP5S4KXafxN4pBp8X5sqs/pvoAQNbrDPW3yukOqVwgRx4L6b/U
         zw+FpMIkqhLOQqeprZEfKAtALiO9J8sOQ1tyzz8f0AM+aOoH2N+yOwXOSoUHuaAVCT18
         Zh82RfWHaZXgMzgavZ9il/g4jPjQslCWPRoeGMWVVyLWqkkr6TsyVVQUaFD9PnKoLiwT
         CDrvwN1cV9NoF0Y3s+zewGPGGznraQUg2kWFyLnF7UkBnmSMsHSofyv69b+k6ufHjEvF
         HPxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764740536; x=1765345336;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=PxfbM7kuJoD5VPtlLfzvhUKZY27u02y36QHhwGGHEm4=;
        b=sNhOOEzlg8XgYL/2kwu3LJAkfZckc8mQA6+oc+9YiN+NwI9elS+wNdwHc1mnzMYvXk
         6Mk4CQDPMf8cfcpe1azuxxlG38uOiTrY8VZPxPMFO7j83JVZkj7q8GTSNT9HnkOA+c9O
         swM53B8ZNYrtraIMXKRq75tU0c93273vUo4upDuMmS8CKZ6Se6oWVOCLroRp0zeTuHHe
         VT6SM6ryZ9C6VJeeVy5AmfD+d39NsdwkbAz7KwOlHrcO8darv5r9C9UqW1ss5mZVU5Iq
         IFrKVNQY5FFlROcpxph6kS4oUC6mJY5KNZGgi538V4tzQyKqKOIsp2uSwq6t36p3a5xc
         UNRA==
X-Forwarded-Encrypted: i=1; AJvYcCX0mB82De3bnRXIgYBC+UZTnRc2JmAraFEnCPV9CMFyiuv+IQjhbQHg4I+RoKWer3FUVGt4NrI9nbarFYIp/Q==@lists.infradead.org
X-Gm-Message-State: AOJu0YzjAZ24rHak1QlWj/q20Nb8NxmVEUzd8WNAvkOhuocU4q6s+Ntv
	w4Lwg4JFcux5u67oNxjWEArvG8yDc1uhYP4deHjf77AsHalTIlbPcxXS6ZojBRWmUf2AiUNAES1
	HcPKXqIOz4o6ZVLgSm3qPMtA1jMl9/K0=
X-Gm-Gg: ASbGnctLaBS/fGzQSVCqZbSMEnsTjz+ttERjz80PhkfrHCvsoZhLygyTUoHMR/N3A4H
	mS5qMTgdrIxmndAYN4nHTO6j/6aeM7i1LblD4KjQVuFDg3Fqc3obHASf1ca8NxWScr5Ub3GSnc4
	9ppbwnFJ37BgN5kq/QBDrmTWGeeOpkWnGdS8zLXVWyV7EKa8Fp9f0fRanXK1RgaxN1nOn7wfg+9
	YMOIIti8vPd2lMBrA3hxRBqbECiG0+60PS4vrkIUM7m2ZD1FeQ8IAU8/ZmlvfcMEEESMVt1U4AT
	cIbUUGy0q0qGZOZRPMf3uU2umv8=
X-Google-Smtp-Source: AGHT+IFwCU9aRxx0MKhqPujuKT29rmxF6xmzausYLLlPgggVvzW7ukxmxusjZ9FhENtch87NXn/V5mnqZleru3GSdPo=
X-Received: by 2002:a5d:588f:0:b0:42b:5567:854b with SMTP id
 ffacd0b85a97d-42f731ca5f0mr828801f8f.45.1764740535856; Tue, 02 Dec 2025
 21:42:15 -0800 (PST)
MIME-Version: 1.0
References: <20251202084052.1517-1-naoki@radxa.com> <185BFDE915D4629C+83d852ac-617c-48a0-aeba-a881e3542e78@radxa.com>
In-Reply-To: <185BFDE915D4629C+83d852ac-617c-48a0-aeba-a881e3542e78@radxa.com>
From: Jimmy Hon <honyuenkwun@gmail.com>
Date: Tue, 2 Dec 2025 23:42:04 -0600
X-Gm-Features: AWmQ_bkYAI-HnsWNwu9p3xu0D33k6sG0cDL1tSqIJ0N19bShJ-eFNSO_MvNSlj8
Message-ID: <CALWfF7+ESPGscJNrxxSEyNmJsFTRDM2crjAduiCfqaMUETd2_A@mail.gmail.com>
Subject: Re: [RESEND2 PATCH v5 0/3] Add Radxa CM5 module and IO board dts
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: heiko@sntech.de, joseph.kogut@gmail.com, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, quentin.schulz@cherry.de, 
	jonas@kwiboo.se, kever.yang@rock-chips.com, inindev@gmail.com, 
	michael.opdenacker@rootcommit.com, dsimic@manjaro.org, pbrobinson@gmail.com, 
	devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251202_214218_529738_4C46FED3 
X-CRM114-Status: UNSURE (   9.70  )
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

T24gVHVlLCBEZWMgMiwgMjAyNSBhdCA0OjE24oCvQU0gRlVLQVVNSSBOYW9raSA8bmFva2lAcmFk
eGEuY29tPiB3cm90ZToKPgo+IEhpIGFsbCwKPgo+IEkgc2luY2VyZWx5IGhvcGUgdGhlIGZvbGxv
d2luZyB3aWxsIGJlIGhlbHBmdWwgaW4geW91ciByZXZpZXcuCj4gICBodHRwczovL2dpdGh1Yi5j
b20vUmFkeGFOYW9raS9saW51eC9ibG9iL2NtNS1pby12OTk5LTIwMjUxMjAxL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvcm9ja2NoaXAvcmszNTg4cy1yYWR4YS1jbTUuZHRzaQo+ICAgaHR0cHM6Ly9naXRo
dWIuY29tL1JhZHhhTmFva2kvbGludXgvYmxvYi9jbTUtaW8tdjk5OS0yMDI1MTIwMS9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OHMtcmFkeGEtY201LWlvLmR0cwpDb3VsZCB5b3Ug
ZWxhYm9yYXRlIG9uIHdoeSB5b3UncmUgbGlua2luZyB0byB0aGUgInY5OTkiIGJyYW5jaD8gVGhl
CmNvbnRlbnQgb2YgdGhhdCBicmFuY2ggZG9lc24ndCBtYXRjaCB0aGUgY29udGVudHMgb2YgdGhp
cyBwYXRjaCBzZXJpZXMKKGkuZS4gUkVTRU5EIDIgb2YgdjUpLiBUaGUgInY1IiBicmFuY2ggbG9v
a3MgY2xvc2VyIHRvIHRoaXMKc3VibWlzc2lvbi4KaHR0cHM6Ly9naXRodWIuY29tL1JhZHhhTmFv
a2kvbGludXgvYmxvYi9jbTUtaW8tdjUtMjAyNTEyMDEKCkNvbW1lbnRzIG9uIHRoZSAidjk5OSIg
YnJhbmNoLi4uaXQgZG9lcyBoYXZlIHRoZSBpbXByb3ZlbWVudHM6Ci0gdGhhdCBhbGxvd3MgdGhl
IHVzYWdlIG9mIHRoZSBSYWR4YSBlTU1DIHRvIHVTRCBhZGFwdGVyCi0gZGVmaW5lcyB0aGUgZ21h
YzEgaW4gdGhlIFNvTSBkdHNpLCBidXQgb25seSBlbmFibGVzIHRoZSBnbWFjMSBpbiB0aGUKSU8g
Ym9hcmQncyBkdHMuCgoKPgo+IEJlc3QgcmVnYXJkcywKPgo+IC0tCj4gRlVLQVVNSSBOYW9raQo+
IFJhZHhhIENvbXB1dGVyIChTaGVuemhlbikgQ28uLCBMdGQuCgpKaW1teQoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
