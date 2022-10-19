Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2566C433FE
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Oct 2022 17:39:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mydfQSL9BaaZFPXXt+XTmv1PkbfTDQEdKfXTbNg3olk=; b=BYEXU7HrH7OcKb
	/ZsnGZEbVJoUc8Xc4TRohFPn7KhUwTMZWcA9HVVxtd2JgOcsfphPPU6nedS6yODtDtD5xbYScdkL5
	N/dXK9SYM8d+8i9/Y7WgkBXLcxD6JHWzFh58kC2a8f2KwSky1EpoIJls0NYzxVb/nWdt8Zm/yDLSy
	u24GskkBnLyfM9iDSN8Jb93xkRMzjX4EAyVsbC+YsWTkmZc1VgaChMuclsw8yUOsQmQPIZlq+VDlB
	se36YJqIz/5xxiar+O50gFEC7i47W/ZMywIAui5PAalyg0EdZQoWjI3+W2CKPC7hk53u2nKFMmFTZ
	UjoYmX9GmvUdxuefYC2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olD2C-004a8P-Sj; Wed, 19 Oct 2022 17:39:16 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olD22-004a6v-Cr; Wed, 19 Oct 2022 17:39:07 +0000
Received: by mail-ej1-x632.google.com with SMTP id fy4so41651380ejc.5;
        Wed, 19 Oct 2022 10:39:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZSg9wcbNbcSOzspwRfzUTkVyTxhvEyAzYbLBRttaf6c=;
        b=ZiBfOirqBI2qE4AiRDRnuhq1ob5CIfxeotj1301D57aJfCNREHqXeIQwvVp9IA9Y1Z
         VVvW4ZXNqJ5Y/vpWF98UbLmz5DhIyi14Apizp1Zlr9+JF9bT/nQqnyn3e6hNI4rcaF3U
         5RZpeMajMDB2QUin4L2NaiUzethvwDdEuT8yRq2rA8z6DT3MwE/hJsiKp6Q37x+wg2yr
         fsBK2FFVFOT252oMIV0TZFFYBSyjbG17Z73UUVlpO6H/jw7sbbAhZOmFqTSw3veZNuIO
         q8EIkpcYvoNW1gN4tyenhNFraY5ojzG7dAPYu0P/OqlPkzNfuqOL6AqTqxrJT5PtTWbs
         2QXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZSg9wcbNbcSOzspwRfzUTkVyTxhvEyAzYbLBRttaf6c=;
        b=i/Fy9NR53SKVvpgNTJ0YIUUvRzz8n91t8hyppayRzwYpEF4A81FjbHkthImbeh72J1
         MZFhURiIOTStbTDAfsfrrj6TS3qfno13nngjm/ZOQ920gBxWDFThzD2jWJtntY657V6w
         Yy5zpASThFKeV3n0CAn2zIC1amROokglrotuxG713xTkD7U8y1eIhAMATR3EI/DODPm3
         vC0zaQiINwnSQpF8Mk8uKaNBfWPZ0MOBCOEXo2/O4SqUVcV/pYi0TAHJtSgaSpvwb++j
         1OoPjdSgvv0P3I8JqYIHIRpUj+EdyvNVO8XejFFF0a2ERqvho6MtXZxgVy5KZXZuc+UN
         eMlg==
X-Gm-Message-State: ACrzQf0OG5Hq7nhgC3yLnsccNRgD62vbtiEu/JB9hWSVqhizBS1bdBl8
	E2vdpU31mBzjWwK9l+HlvM507r+C/ik=
X-Google-Smtp-Source: AMsMyM6aAlkq7HSlsQwfhnYhFYnY0TG4ZY4rvi90moQGO1x5RG+zkv2DRiNziDFlFUNhxqhMx/Cn7A==
X-Received: by 2002:a17:907:b07:b0:78d:ce2b:1999 with SMTP id h7-20020a1709070b0700b0078dce2b1999mr8022259ejl.267.1666201142104;
        Wed, 19 Oct 2022 10:39:02 -0700 (PDT)
Received: from [192.168.2.4] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id f11-20020a170906738b00b0073dc8d0eabesm9411681ejl.15.2022.10.19.10.39.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Oct 2022 10:39:01 -0700 (PDT)
Message-ID: <21c35744-eee0-ae31-dc54-3e7e1334ae08@gmail.com>
Date: Wed, 19 Oct 2022 19:39:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH] arm: dts: rockchip: add crypto node for RK322x
To: =?UTF-8?Q?Michele_Zuccal=c3=a0?= <ardutu@gmail.com>,
 Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, Alex Bee <knaerzche@gmail.com>,
 Corentin Labbe <clabbe@baylibre.com>
References: <Y1AqBnPSyu7PpiwP@deskilmich.example.net>
Content-Language: en-US
From: Johan Jonker <jbx6244@gmail.com>
In-Reply-To: <Y1AqBnPSyu7PpiwP@deskilmich.example.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221019_103906_458402_088427BD 
X-CRM114-Status: GOOD (  17.69  )
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

QWRkZWQgQ2M6IGNsYWJiZUBiYXlsaWJyZS5jb20KCk9uIDEwLzE5LzIyIDE4OjQ3LCBNaWNoZWxl
IFp1Y2NhbMOgIHdyb3RlOgo+IFRoZSBjcnlwdG9ncmFwaGljIGhhcmR3YXJlIG9mIHRoZSByazMy
MnggaXMgY29tcGF0aWJsZSB3aXRoIHRoZSBvbmUgcHJlc2VudCBpbiB0aGUgcmszMjg4Lgo+IAo+
IEFkZCB0aGUgcmVzcGVjdGl2ZSBub2RlIHRvIHRoZSBkZXZpY2UgdHJlZS4KPiAKPiBTaWduZWQt
b2ZmLWJ5OiBBbGV4IEJlZSA8a25hZXJ6Y2hlQGdtYWlsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBN
aWNoZWxlIFp1Y2NhbMOgIDxhcmR1dHVAZ21haWwuY29tPgo+IC0tLQo+ICBhcmNoL2FybS9ib290
L2R0cy9yazMyMnguZHRzaSB8IDExICsrKysrKysrKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCAxMSBp
bnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL3JrMzIyeC5k
dHNpIGIvYXJjaC9hcm0vYm9vdC9kdHMvcmszMjJ4LmR0c2kKPiBpbmRleCBmZmMxNmQ2YjkuLmIz
ODFmYzJhMCAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybS9ib290L2R0cy9yazMyMnguZHRzaQo+ICsr
KyBiL2FyY2gvYXJtL2Jvb3QvZHRzL3JrMzIyeC5kdHNpCj4gQEAgLTEzMiw2ICsxMzIsMTcgQEAg
ZGlzcGxheV9zdWJzeXN0ZW06IGRpc3BsYXktc3Vic3lzdGVtIHsKPiAgCQlwb3J0cyA9IDwmdm9w
X291dD47Cj4gIAl9Owo+ICAKPiArCWNyeXB0bzogY3J5cHRvQDEwMGEwMDAwIHsKCj4gKwkJY29t
cGF0aWJsZSA9ICJyb2NrY2hpcCxyazMyODgtY3J5cHRvIjsKCkhpLAoKQ29tcGF0aWJsZSBzdHJp
bmdzIG11c3QgU29DIG9yaWVudGF0ZWQuCgpTb21ldGhpbmcgbGlrZToKY29tcGF0aWJsZSA9ICJy
b2NrY2hpcCxyazMyMjgtY3J5cHRvIiwgInJvY2tjaGlwLHJrMzI4OC1jcnlwdG8iOwoKVGhpcyBz
dHJpbmcgbXVzdCBiZSBhZGQgdG8gWUFNTCBkb2N1bWVudDoKaHR0cHM6Ly9sb3JlLmtlcm5lbC5v
cmcvbGludXgtcm9ja2NoaXAvMjAyMjA5MjcwNzU1MTEuMzE0Nzg0Ny0yNS1jbGFiYmVAYmF5bGli
cmUuY29tLwoKVGhlIHN0YXR1cyBvZiB0aGF0IHNlcmllIGlzIHVua25vd24gdG8gbWUuCk5vdCBz
dXJlIGJ5IHdobyBvciB3aGVuIHRoYXQgaXMgZ29pbmcgdG8gYmUgbWVyZ2VkLgoKSm9oYW4KCj4g
KwkJcmVnID0gPDB4MTAwYTAwMDAgMHg0MDAwPjsKPiArCQlpbnRlcnJ1cHRzID0gPEdJQ19TUEkg
MzAgSVJRX1RZUEVfTEVWRUxfSElHSD47Cj4gKwkJY2xvY2tzID0gPCZjcnUgSENMS19NX0NSWVBU
Tz4sIDwmY3J1IEhDTEtfU19DUllQVE8+LAo+ICsJCQkgPCZjcnUgU0NMS19DUllQVE8+LCA8JmNy
dSBBQ0xLX0RNQUM+Owo+ICsJCWNsb2NrLW5hbWVzID0gImFjbGsiLCAiaGNsayIsICJzY2xrIiwg
ImFwYl9wY2xrIjsKPiArCQlyZXNldHMgPSA8JmNydSBTUlNUX0NSWVBUTz47Cj4gKwkJcmVzZXQt
bmFtZXMgPSAiY3J5cHRvLXJzdCI7Cj4gKwl9Owo+ICsKPiAgCWkyczE6IGkyczFAMTAwYjAwMDAg
ewo+ICAJCWNvbXBhdGlibGUgPSAicm9ja2NoaXAscmszMjI4LWkycyIsICJyb2NrY2hpcCxyazMw
NjYtaTJzIjsKPiAgCQlyZWcgPSA8MHgxMDBiMDAwMCAweDQwMDA+OwoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
