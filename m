Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EBF22C43334
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Jun 2022 16:51:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0voObZhSHvHQNdBgPlSrNjYUdWlCvSP9LokbsiGIld4=; b=zK6izHwb0Yx5X4
	b5aJ/YMF8N4MxeaO2yW3J2U5lFOW5F+xMApy07BdGb9A6XeAVSdcpVjn2hkLoDIbusb5hX9bHclC2
	Wdl6cavZl0Wdi3PU++hM2QW67xsmOcq/bjr1k17KYVQdR3HvSJquCsFoXDB5SwP/0fmQ2bE7ex2f/
	7RzkWWTIP05q/UGmU7Dx+JjSOty2SnR9/ZG6tG3ofY9OQOI8Qm6j0qXeUnERuhmylHHQGCJtotvbf
	+jACEwAWPymls0DnAoUsdHAHpAxgva52+8S7vXily9Nth3qlxMKnYYk7DDB2dcnZg4Xyh2P+1x9qd
	kh4GL34GBLCilt3qfIuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o2FBR-008Ju2-Hj; Fri, 17 Jun 2022 16:50:57 +0000
Received: from mail-pj1-x1035.google.com ([2607:f8b0:4864:20::1035])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o2FBO-008Jqt-Mi
	for linux-rockchip@lists.infradead.org; Fri, 17 Jun 2022 16:50:56 +0000
Received: by mail-pj1-x1035.google.com with SMTP id h34-20020a17090a29a500b001eb01527d9eso3792856pjd.3
        for <linux-rockchip@lists.infradead.org>; Fri, 17 Jun 2022 09:50:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=IIAUTR7OoIWJ2pRx1i7opD5gYbV+utufr8Lugo57XZ4=;
        b=i+XFNyjJRiPnKyxW2lf6o9XxK07x6WiRXBbH6Ro6E2mucjI0sgX1OzFmPF7zhX53Mg
         k85Mj86mFFUyQnXpTWquE4xroiKLAlXdNpre340S/y5+df6ex5+CdttcoZWk2+tAYEuj
         e7pJZwG4vbW51x/rpDwrbzyLTHi33i0s74TaKG5pjgBf1pykO4jmKDj5GE2uMe8TiATM
         3NfdpqOX26h2hxMu55PYA/WGjlOlcaUXTAsWkAlSaEXQwFLdoZD/GKy+7GCUvXhKavQs
         fGoxYH2bzshW4Y6ZU97afnesl7RadtwHSJuYGEOGgBVvFTVnQgnj6qb108cmhloERjI+
         mCSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=IIAUTR7OoIWJ2pRx1i7opD5gYbV+utufr8Lugo57XZ4=;
        b=gN0g7AKRCw6a5EPvIqbXLlVkG+tiDfTLLw/Zt+BPogCQXThUKyNcpnWaL1bQ5myB8Q
         oCLR4aVAbySgJlXNfbNt7U35R+9gYKUwrgppm6lrCIqQkpg2Cpx/BmM5NKi4XR8nSGv9
         HW/EUJwgdag63XTJTzQKE21JnHsfqIWOfd5rqEzW6IKZrol6i/BOfZz8WTq4tqfUHkLS
         haVJoyJwgKS0rMSxStvk9SGEYTS4iJlVkuVbqIhmlKR/JEJbZkFgLhsLBvpnzNxN74Zj
         jrcG0RT20fay3Vo87gkQXlV6dBGpb3ojA2gbH6GYtOVBl1+Tnayk5P+JVe0FC/fSu7tg
         Iamg==
X-Gm-Message-State: AJIora8CDg2W9aILt9goeNqd6Z3+zwKehXabW0gyT+3xNc+7TG8tCpzu
	H29BiUJ7tNpdFZIKfyKJysPn+Q==
X-Google-Smtp-Source: AGRyM1tg5lQmvYnC6t3hmVPziKa1DmxUWEeY6Zzf35V+7J+TpdeA/WGsiqmnCxSK0967pKXxFYk1ag==
X-Received: by 2002:a17:90b:4b8d:b0:1e3:5147:6e63 with SMTP id lr13-20020a17090b4b8d00b001e351476e63mr11704819pjb.162.1655484647292;
        Fri, 17 Jun 2022 09:50:47 -0700 (PDT)
Received: from google.com ([192.77.111.2])
        by smtp.gmail.com with ESMTPSA id b10-20020a170902650a00b00162529828aesm3797564plk.109.2022.06.17.09.50.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Jun 2022 09:50:46 -0700 (PDT)
Date: Fri, 17 Jun 2022 17:50:43 +0100
From: Lee Jones <lee.jones@linaro.org>
To: "cym@rock-chips.com" <cym@rock-chips.com>
Cc: u-boot <u-boot@lists.denx.de>,
	linux-rockchip <linux-rockchip@lists.infradead.org>,
	wxt <wxt@rock-chips.com>,
	=?utf-8?B?5p2o5Yev?= <kever.yang@rock-chips.com>,
	zhangqing <zhangqing@rock-chips.com>,
	=?utf-8?B?6buE5bCP5Lic?= <derrick.huang@rock-chips.com>,
	=?utf-8?B?6ZmI5YGl5rSq?= <chenjh@rock-chips.com>,
	=?utf-8?B?5p6X5bmz?= <hisping.lin@rock-chips.com>,
	=?utf-8?B?5rGk5LqR5bmz?= <typ@rock-chips.com>,
	cwz <cwz@rock-chips.com>, chenfen <chenfen@rock-chips.com>,
	jagan <jagan@amarulasolutions.com>, sjg <sjg@chromium.org>,
	pgwipeout <pgwipeout@gmail.com>, adelva <adelva@google.com>,
	rammuthiah <rammuthiah@google.com>
Subject: Re: Re: [Rock Pi 4+] Mainline LPDDR4 RAM initialisation is not
 sufficient to boot successfully
Message-ID: <Yqyw4wFl46U+C51p@google.com>
References: <Yo4v3jUeHXTovjOH@google.com>
 <YquBUfkaScI2txiA@google.com>
 <2022061720060297899624@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2022061720060297899624@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220617_095054_807833_01A9C87F 
X-CRM114-Status: GOOD (  12.09  )
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

T24gRnJpLCAxNyBKdW4gMjAyMiwgY3ltQHJvY2stY2hpcHMuY29tIHdyb3RlOgoKPiBDb3VsZCB5
b3UgIGhlbHAgdXMgdG8gZ2V0IHRoZSBEUkFNIHBhcnQgbnVtYmVyIHdoaWNoIGluaXRpYWxpemF0
aW9uIGZhaWx1cmVzIG9uIHRoZSBSb2NrIFBpIDQrLiAKCkkgaGF2ZSB0ZXN0ZWQgMyBib2FyZHM7
IG9uZSBhcHBlYXJzIHRvIGJlIGZ1bGx5IHdvcmtpbmcsIG9uIGFub3RoZXIgMQpvZiB0aGUgMiBM
UEREUjQgKENoYW5uZWwgMSkgY2hpcHMgY29uc2lzdGVudGx5IGZhaWxzIHdpdGggYSBDb2wgYW5k
CkNhcCBFcnJvciBhbmQgb24gdGhlIGZpbmFsIG9uZSBib3RoIGNoaXBzIChDaGFubmVsIDAgJiAx
KSBmYWlsIGluIHRoZQpzYW1lIHdheSBhcyB0aGUgbGFzdCAoQ29sIGFuZCBDYXAgZXJyb3JzKS4K
CkFsbCBjaGlwcyBhcmU6IEg5SENOTk5CS1VNTAoKPiBXZSBoYXZlIGZvdW5kIHRoYXQgc29tZSBM
UEREUjQgIGFibm9ybWFsIG9wZXJhdGlvbiBhdCA1ME1Iei4KPiBJIHRoaW5rIHlvdSBjYW4gdHJ5
IHRoYXQgdXNlIDQwME1IeiB0byBkZXRlY3QgY2FwYWNpdHkuCgpXb25kZXJmdWwuICBUaGlzIHNv
bHZlcyB0aGUgcHJvYmxlbS4gIFRoYW5rIHlvdSBzbyBtdWNoIQoKV291bGQgeW91IGxpa2UgdG8g
c3VibWl0IHRoaXMgaW50byB1cHN0cmVhbSBVLWJvb3QgeW91cnNlbGYsIG9yIHdvdWxkCnlvdSBs
aWtlIG1lIHRvIGRvIHRoYXQgZm9yIHlvdT8KCklmIHRoZSBmb3JtZXIsIHBsZWFzZSBDYyBtZSBv
biB0aGUgcGF0Y2ggYW5kIGFkZCBteToKCiAgVGVzdGVkLWJ5IExlZSBKb25lcyA8bGVlLmpvbmVz
QGxpbmFyby5vcmc+CgpJZiB0aGUgbGF0dGVyLCBwbGVhc2UgbGV0IG1lIGtub3cgYW5kIEknbGwg
ZG8gd2hhdCBJIGNhbiB0byBoZWxwLgoKLS0gCkxlZSBKb25lcyBb5p2O55C85pavXQpQcmluY2lw
YWwgVGVjaG5pY2FsIExlYWQgLSBEZXZlbG9wZXIgU2VydmljZXMKTGluYXJvLm9yZyDilIIgT3Bl
biBzb3VyY2Ugc29mdHdhcmUgZm9yIEFybSBTb0NzCkZvbGxvdyBMaW5hcm86IEZhY2Vib29rIHwg
VHdpdHRlciB8IEJsb2cKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcm9ja2NoaXAK
