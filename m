Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0E72BC282D0
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Mar 2025 13:13:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rP7ponRRESSJzg2phLVQtf21mxK2H6+PRSC1Zqov46g=; b=t/ix+v6uQLMWZ8
	4SzhwAEfAx7j1Ka0ss1RDlCRMeE108EFQNgDwEIewM2/QdMFcVMN6LZKgcq8FPifHJ9JUCPgQ6gMw
	RJT0tKp6UuIe37DVqn0GCLBp7sB098iBVdvs5rUJVWj6xsHh1uwzVCkjhCFBI6Sqj58n2opg3PEHo
	YaVw6/GtNrKA+SM1gfZOIRH9FJssQdO4jamh+REo5/l3+UqiqioFPlULfqojFKaRyF3rd4hZ1aU44
	Pc6Y+VHjasExBMFh7VPNBBavqWiH+hXAFUmys7klshGUvEU7UYwNswl6ptsx4UgvTLERx0pP5DP5u
	hXleoxQ6m1fOJxGdVNuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tpS58-00000004kX9-441V;
	Tue, 04 Mar 2025 13:13:10 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpS56-00000004kVq-1I67;
	Tue, 04 Mar 2025 13:13:09 +0000
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-abf48293ad0so547965366b.0;
        Tue, 04 Mar 2025 05:13:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1741093986; x=1741698786; darn=lists.infradead.org;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mLbCdf5ydhGRwAPCjiKPFxPNXbtTOCnpAyz9+gFbv3Y=;
        b=SirTmXlzfp3lDa2DnuCTzvZh2JAz0lRLMPygWmwFONKlheoV9fS4vdeOY43hGVcEXr
         rdTOYcf4q11hkLQTu32jOkpynKAvXpVhqlnIck2sPUa/EYURmyF3acfYG4LTYAMg5Mfr
         07K5ppCoNxt2duiZjeVyQH0KkwoW28Iw8jE+IHE8dPcAAtlzYv5jCm5ITOSEZjLbQNt8
         7Lt8vOBAxmhU5j6tQXd4lYjPSL49+oNELHKdKMD8Mt91wYs0so9Y2PDOoIPcsnZFTKVN
         ECmAXS6t/ySvZf6FYmwZRTMcqu8wGdZB/qK+twdjoS4c2nIrDWLZq5fNhOPeLmpGGYFv
         0hSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741093986; x=1741698786;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mLbCdf5ydhGRwAPCjiKPFxPNXbtTOCnpAyz9+gFbv3Y=;
        b=pB5eKHu0kZMm+e1EaHwWyfVUrLIKM6rk2PCp4F6uKPxMCIjuTO8T/B1Vf778SE2Tpr
         ie0+Gdn6+ufFWD4uBOtSo8z+ug3YpCgfXPjuL2/JlVBpcS509Jwge2LxvvHcoWCmD4P+
         REspjX5Ai5ybUS1uGDrMJAj5KIbI1LZZGbfybF2yyXtqcB8mZJblDO0+/ApMdq6s2Vn+
         CJXpTObaB5uqJIIdwFhTa5w79OJ+i3V5i2Py7owM7evPzFFKjdeinUidP7lH1aUA+aTP
         pB8anoOSaVcDOUuq9SmZduFGnAwo2f3DYrUq6VitzyrXMTqMtD7tIh/JvEeQE4UOGMEs
         sCeQ==
X-Forwarded-Encrypted: i=1; AJvYcCUUUo4Wlf4WHAeqS66g/1+peMvM95HVHapGh0t/aZY/J5wviDFZybby4HmrCbSom9wQrIME1+MliKDuc0l1upw=@lists.infradead.org, AJvYcCW+b9MYogPkekUkBTFDtcWSqxrcGpqAuAo2lp9hzdmPJ4jPwDN6lE7SRac0GMhydzqIy3bN/d/qF4W4mRcRHakM@lists.infradead.org
X-Gm-Message-State: AOJu0YzI4S6TNHlcBwgj1XxkNfsYqtoqMBn+1ypUe7+YJr4quFvMHsWk
	yZHXHoHy86jL6jR1UmiIQqW7sAJX5qWUN7ss9QJaT0CTTx2UHqJz
X-Gm-Gg: ASbGnctQsfX5g5hvW+qodp3ZG7MWh7mtFWGGrR+JGuA2NgjneBlFyeH6EA6sCGvlg7L
	ZnVaGL8tvbHb0A7MP26apdj/S0mPW1XahqN0ZrO0jLPe73ttP+mT0XyS+V8LXz8p0K+VRzsPHfD
	W7mG58+JwOZqWBI6i7KzEKn1helC+xqU0jsupoedNi1uXDyQ6aq7okULtmVAe9Lk19KBUIQyIJO
	QBsFBRXat7OUSozQU+OOaJMA+dnOkFpazmPVNS8Dc1BhmMrka/oyhXtt9JS0zv05s1QMQp7V4UW
	3fXz1oymGe2AqhUuTa4z/joR6rQ7MHGv9NUroxtqTf0wFL0Pej0Z3i2TRh6xCPcmi6LdJes0TXF
	scBkHLN8aOoyaAOAOdx99T5X/xw==
X-Google-Smtp-Source: AGHT+IFoaUg9Nkh97ooIflZaTgzJMVg2UFR+7WPJFlk7BUC+KoSF3yd0IR8of6FOHQwHK0CM0VOg2A==
X-Received: by 2002:a17:906:6a24:b0:ab7:6fa9:b0a9 with SMTP id a640c23a62f3a-abf25d94191mr2160998666b.11.1741093985833;
        Tue, 04 Mar 2025 05:13:05 -0800 (PST)
Received: from smtpclient.apple (89-66-237-154.dynamic.chello.pl. [89.66.237.154])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5e4c2f408cdsm8118489a12.0.2025.03.04.05.13.02
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 04 Mar 2025 05:13:04 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.400.131.1.6\))
Subject: Re: [PATCH 0/6] Add support for RK3588 DisplayPort Controller
From: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
X-Priority: 3
In-Reply-To: <7b8767fc.3607.19551aa5f74.Coremail.andyshrk@163.com>
Date: Tue, 4 Mar 2025 14:12:50 +0100
Cc: heiko@sntech.de,
 neil.armstrong@linaro.org,
 sebastian.reichel@collabora.com,
 devicetree@vger.kernel.org,
 hjc@rock-chips.com,
 mripard@kernel.org,
 linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org,
 yubing.zhang@rock-chips.com,
 dri-devel@lists.freedesktop.org,
 Andy Yan <andy.yan@rock-chips.com>,
 krzk+dt@kernel.org,
 robh@kernel.org,
 linux-arm-kernel@lists.infradead.org
Message-Id: <047EECFC-7E55-44EC-896F-13FE04333E4D@gmail.com>
References: <20250223113036.74252-1-andyshrk@163.com>
 <AC3DE87B-64B1-4C34-8E1B-3900E2C53AA3@gmail.com>
 <7b8767fc.3607.19551aa5f74.Coremail.andyshrk@163.com>
To: Andy Yan <andyshrk@163.com>
X-Mailer: Apple Mail (2.3826.400.131.1.6)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250304_051308_343546_35F2A9D6 
X-CRM114-Status: GOOD (  13.27  )
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

Cgo+IFdpYWRvbW/Fm8SHIG5hcGlzYW5hIHByemV6IEFuZHkgWWFuIDxhbmR5c2hya0AxNjMuY29t
PiB3IGRuaXUgMSBtYXIgMjAyNSwgbyBnb2R6LiAxMzoyNDoKPiAKPiAKPiBIaSBQaW90ciwKPiAK
Pj4gCj4+IGlzIGl0IHdvcnRoIHRvIHBsYXkgd2l0aCB0aGlzIG9yIGl0IGlzIHRvbyBlYXJseT8K
PiAKPiBJIHRoaW5rIHlvdSBjb3VsZCBnaXZlIGl0IGEgdHJ5IGlmIGl0IHVzaW5nIHRoZSBTdGFu
ZGFyZCBEUO+8iG5vbi1BTFQgbW9kZe+8iSBwb3J0IGZvciBvdXRwdXQuIAo+IFNpbmNlIEkgZG9u
J3QgY3VycmVudGx5IGhhdmUgYSBkZXZlbG9wbWVudCBib2FyZCB3aXRoIERQMSBvdXRwdXQgYXZh
aWxhYmxlLCBJIGhhdmVuJ3QgYmVlbgo+IGFibGUgdG8gdGVzdCBpdCB5ZXQuIEFzIGZvciB0aGUg
VHlwZS1DIEFsdGVybmF0ZSBNb2RlIG91dHB1dCwgc29tZSBwYXRjaGVzIGFyZSBzdGlsbCByZXF1
aXJlZCAKPiBJJ2xsICBzZW5kIGl0IHdpdGggVjIgdG9tb3Jyb3cgb3IgbmV4dCB3ZWVrLgo+IEZl
ZWwgZnJlZSB0byBsZXQgbWUga25vdyBpZiBJZiB5b3UgZW5jb3VudGVyIGFueSBpc3N1ZXPjgIIK
PiAKCkFuZHksCkkgYWRkZWQgZHAxIGVuYWJsZW1lbnQgaW4gcm9jazUgaXR4IGxpa2UgdGhpczog
aHR0cHM6Ly9naXN0LmdpdGh1Yi5jb20vd2FycG1lL2JkZGY3NTkxMjE5M2Y1NzcyNGM0OTIxNmQ1
ZDg1ZDRhClVuZm9ydHVuYXRlbHkgaXQgbm90IHdvcmtzLgpGb3IgL3N5cy9rZXJuZWwvZGVidWcv
ZHJpLzAvc3RhdGUgLSBwbHMgc2VlIGFib3ZlIGxpbmvigKYKSeKAmW0gbm90IHN1cmU6IGRvIGkg
bWlzc2VkIHNvbWV0aGluZyBpbiBkdCBvciByYXRoZXIgaXNzdWUgaXNzdWUgIGlzIGluIGRwIGNv
ZGUuLi4KCkZZSTogc2NoZW1hdGljOiBodHRwczovL2RsLnJhZHhhLmNvbS9yb2NrNS81aXR4L3Yx
MTEwL3JhZHhhX3JvY2tfNWl0eF92MTExMF9zY2hlbWF0aWMucGRmCgoKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
