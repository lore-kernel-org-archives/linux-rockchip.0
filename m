Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0482BCAC5B8
	for <linux-rockchip@archiver.kernel.org>; Sun,  5 Oct 2025 04:55:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aizqtQcWKxi5RzqW9w5N3vbotSLwJs6KDjdV0h6y6lw=; b=Zt+7MkQ6bfyDcX
	DRNGDXgu1itqxEEEqpmCwFfaEbkQM5jnCX24Risy2hlItbO8YxvgEeBvldCBQmZC0bjVfYJxq57Yi
	Hg1xfQmBmxk50518na3zAae2fC6idTt7oGQWUVk++IKChF1f/Ixl9oZMXCBGl1IS7rmW4Q/oDVLnA
	zn1wFrtaO9Mw5wOo3lU7h0/Pgc+8vi5vOuSO9gxHBVzRWVgIq6O3L8DoQCo8DyKNbKOcOT/SXPqdx
	7hnP6ROc/1xV4FhZ8CBtZegEASNHSuGiSagLzw/c+2EWF1Ooq8+7CDqqwqRQeO25UV+prBxIV2bLd
	0LNh3dhiINXdeIWD9nXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5GmL-0000000EERf-03YS;
	Sun, 05 Oct 2025 04:55:25 +0000
Received: from mail-pf1-x429.google.com ([2607:f8b0:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5GmI-0000000EEQx-2pWf
	for linux-rockchip@lists.infradead.org;
	Sun, 05 Oct 2025 04:55:23 +0000
Received: by mail-pf1-x429.google.com with SMTP id d2e1a72fcca58-781ea2cee3fso3559457b3a.0
        for <linux-rockchip@lists.infradead.org>; Sat, 04 Oct 2025 21:55:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759640121; x=1760244921; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=l9ES7sgSCHDlhobwO0ZrFKVNTVshI11voBNNIhtfWjA=;
        b=XCHP2SqdG9gc0BPKPfRlqU2lc2loiR8yWWsDq3AAfGr3e9ldOypB/X1TUhc979l/TS
         PTthhGDyr/9ZUj100g+ZZaTGKJ7qRLZUSkAA1dxrI264Mn8hnKh61we3fiMKQzTHb01q
         5C1P8dATm4WeAUOnjVebx62s6DEAJPCySBABas0yQN0ID3eoLwwlyc9p5EAbzk+81J5d
         tR04+K3rl4yK2htvyvMgkrCa2mfFr0aYK/hvIjW7q3NoCqgu4ZlqFqb55xp9zERN+Xkv
         IayByTK1X7KY8cmCf1vYXaZRNxIumIGOBX4eRcJSa9IO0v3SQoggUeaJczo+1hfPseiG
         qYTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759640121; x=1760244921;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=l9ES7sgSCHDlhobwO0ZrFKVNTVshI11voBNNIhtfWjA=;
        b=YX56eVDS2BRJIZR7ncNOIgznFCo6PrvRcp6uX+IISJATbfieya6Gabk2Iu5AzCpRuF
         TZrL5GaCc5ZdSPpOOdLjn+QQPpX9p3HabKflG0LpwswTUOy6odQj0JMyaH3l2FaIf+pU
         X+uhIB3AwhoH9E+NYXmL7pvz0pegWpCC6kXJK4aDgsqXhKE0k818LoKKD03eCIKrnIZ7
         RXEaWMfCSFMydjmP/Ue1mzisTMBJb6SO56dLp75ysRRVblRa7Saz+RkgEyos+z5IsvAk
         He4oJhDs1reQOp8nvGHHvHkGzZtsGXuulF6ZpUD1AT3nygcQrnkDvN5/cfPCRJhJO1gI
         Nabw==
X-Forwarded-Encrypted: i=1; AJvYcCWJpOJkKCajNy0LhU43PoVvQcAx9EZNO/LcllBmRuWcCY6V6ILSkMoNVLxvUhPfW4msC5+7RcP7uEpeL0QKSA==@lists.infradead.org
X-Gm-Message-State: AOJu0YzrlD/Fxx94J4IAzipKVD/glLifcaZMI24snBt2Uipcn1Y2yciM
	Lr9BYjVc3730qeTEWkfrFbPCVAwuGVEW7r6WyMKVQqn8BvtBJkxzmi8IAJwQ4+CxHIo=
X-Gm-Gg: ASbGnct4ncztJhMpC6rF6jCPfXSVUkFJuP3BAoisBKrNsDm2AQe0HhoEP/6OAA2K5kb
	jGT/0a/SdLGITmYMkgZtzVSrgrCH8+CkSOsywcLDemhRdq78jRE2denEe7z6fH+zyeOYWwyNc2D
	2y6Vh2Qs2d3fvW/ewORcVj5mCtwoswgq2hjh7o56clyFrtrQZALwKX0rt/SL+0HLJ56Krgz83Vp
	woi5SdqnH/xp8ciCvGiYzlZODOnylG2SYRgzx0yiliUsRHPKySnmEPRWCYbx7eFXdLe8rNAptYZ
	SCbxOpqCy+KBTKTsP8wycx+9RafUstXkszaJUp6HFEXJ6hplSLFzrEjRPxjiEOGPmdDOceWXp8J
	Ea7OK4AMApjpxaKFSqbf2ynhie11gnKO2977NVR7RlfrsUEh6tnhN5FXZyvhObWZLdENFt5k0n5
	yZNScl9Wpob8PzN8l+nffZmlNDFR4W6zxZGBA=
X-Google-Smtp-Source: AGHT+IHrXDCzsLNximokCsFX8BTq6/xEQSVOcieVuoemZgV4yRTvna8trHt71DcqUkLSfovmVG7MFg==
X-Received: by 2002:a05:6a21:999d:b0:2f6:cabe:a7a8 with SMTP id adf61e73a8af0-32b6209626amr10163253637.32.1759640121168;
        Sat, 04 Oct 2025 21:55:21 -0700 (PDT)
Received: from [192.168.68.61] (104-12-136-65.lightspeed.irvnca.sbcglobal.net. [104.12.136.65])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b6099d4cfbesm8686558a12.28.2025.10.04.21.55.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 04 Oct 2025 21:55:20 -0700 (PDT)
Message-ID: <37f2603e-8c51-4f92-a7af-0e60cd577004@gmail.com>
Date: Sat, 4 Oct 2025 21:55:19 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/5] Upstreaming Pinephone Pro Patches
To: Dragan Simic <dsimic@manjaro.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Ondrej Jirman <megi@xff.cz>, "Leonardo G. Trombetta" <lgtrombetta@gmx.com>
References: <20250921-ppp_light_accel_mag_vol-down-v3-0-7af6651f77e4@gmail.com>
 <53eabe34a310ea9c74315fa09a604e4a@manjaro.org>
 <b01ed528-8b29-4a6a-bdff-88f2e3b5dd2e@gmail.com>
 <115da845d9161e6ecfa67cf189b84aa8@manjaro.org>
Content-Language: en-US
From: Rudraksha Gupta <guptarud@gmail.com>
In-Reply-To: <115da845d9161e6ecfa67cf189b84aa8@manjaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251004_215522_741982_11635D8C 
X-CRM114-Status: GOOD (  29.05  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGVsbG8gRHJhZ2FuLAoKCj4gVGhhbmtzIGZvciBpbXByb3ZpbmcgdGhlIHBhdGNoIGRlc2NyaXB0
aW9ucyBpbiB0aGUgdjQgb2YgdGhpcyBzZXJpZXMuCj4gSSBqdXN0IHdlbnQgcXVpY2tseSB0aHJv
dWdoIHRoZSB2NCBhbmQgaXQgbG9va3MgbXVjaCBiZXR0ZXIuCj4KPiBJdCBjb3VsZCBiZSBzYWlk
IHRoYXQgdGhlIG5ldyBwYXRjaCBkZXNjcmlwdGlvbnMgYXJlIG5vdyBhIGJpdCB0b28KPiB2ZXJi
b3NlLCBpbiB0aGUgc2Vuc2UgdGhhdCB0aGUgdGVzdCBwcm9jZWR1cmVzIGFuZCB0aGVpciByZXN1
bHRzIGNvdWxkCj4gYmUgc3VtbWVkIHVwIGEgYml0IGJldHRlciBpbiBwcm9zZSwgaW5zdGVhZCBv
ZiBwcm92aWRpbmcgdGhlICJyYXciCj4gaW5wdXRzIGFuZCBvdXRwdXRzLsKgIEhvd2V2ZXIsIGl0
J3Mgc3RpbGwgYmV0dGVyIHRvIGhhdmUgdGhvc2UsIHRoYW4KPiBub3QgdG8gaGF2ZSBhbnl0aGlu
Zy7CoCBXcml0aW5nIGdvb2QgcHJvc2UgaXMgYSBza2lsbCB0aGF0IHVzdWFsbHkKPiByZXF1aXJl
cyBsZWFybmluZyBhbmQgcHJhY3RpY2UuCgpBd2Vzb21lISBJIHdhcyBob3BpbmcgdGhhdCBvdGhl
cnMgd291bGQgY29tbWVudCBvbiB0aGUgdGVzdGluZyBJJ3ZlIGRvbmUgCihlc3BlY2lhbGx5IGZv
ciB0aGUgYWNjZWxlcm9tZXRlciBhbmQgbWFnbmV0b21ldGVyIHBhdGNoZXMpIGFzIEkgY2FuJ3Qg
CnRlbGwgaWYgdXNlcnNwYWNlIGlzIHdyb25nIG9yIGlmIG15IHRlc3RpbmcvY29uY2x1c2lvbiBp
cyB3cm9uZy4gTW9iaWxlIApMaW51eCBpcyB2ZXJ5IGVhcmx5IHN0YWdlcyBhdCB0aGUgbW9tZW50
LCBhbmQgSSBzdXNwZWN0IHRoZSBQaW5lcGhvbmUgCmFuZCBQaW5lcGhvbmUgUHJvIHdlcmUgdXNl
ZCBhcyByZWZlcmVuY2UgZGV2aWNlcyB3aXRoIE1lZ2kncyBkb3duc3RyZWFtIAprZXJuZWwuIFdy
b25nIG1vdW50IG1hdHJpY2VzIGluIHRoZSBkb3duc3RyZWFtIGtlcm5lbCBtaWdodCBiZSBhZmZl
Y3RpbmcgCnVzZXJzcGFjZS4gVGhpcyBtZWFucyB0aGF0IHdpdGggdGhlIGNvcnJlY3RlZCBtb3Vu
dCBtYXRyaWNlcyBpbiB0aGlzIApwYXRjaCBzZXJpZXMsIHVzZXJzcGFjZSBpcyBzbGlnaHRseSBi
cm9rZW4gKGVnLiBzaW5jZSBJIGZpeGVkIHRoZSAKYWNjZWxlcm9tZXRlciwgdGhlIHNjcmVlbiBp
biBQaG9zaCBhbmQgS0RFIFBsYXNtYSBhcmUgdXBzaWRlIGRvd24uIEkgCnN1c3BlY3QgS0RFJ3Mg
S29tcGFzcyBhbmQgTGVvbmFyZG8ncyBjb21wYXNzIGFwcCBtaWdodCBiZSB0aGUgc2FtZSBpZiAK
SSdtIGNoYW5naW5nIHRoZSBtb3VudCBtYXRyaXggZm9yIHRoZSBtYWduZXRvbWV0ZXIpLiBUaGlz
IGlzIHdoeSBJIApkZWNpZGVkIHRvIHNob3djYXNlIHRoZSByYXcgdmFsdWVzIGluIG15IHRlc3Rp
bmcuIElmIG15IHRlc3RpbmcgaXMgCmluY29ycmVjdCwgcGxlYXNlIGZlZWwgZnJlZSB0byBsZXQg
bWUga25vdy4KCkkgdGhpbmsgSSB3aWxsIGxlYXZlIG15IHRlc3RpbmcgaW4gdGhlIGNvbW1pdHMg
aXRzZWxmIHRoaXMgdGltZS4gSWYgdGhlIAptb3VudCBtYXRyaWNlcyBhcmUgY29ycmVjdCBiYXNl
ZCBvbiBteSB0ZXN0aW5nLCBpdCB3aWxsIHByb2JhYmx5IGJlIApoZWxwZnVsIGluIHRoZSBmdXR1
cmUgaW4gaWRlbnRpZnlpbmcgd2h5IGRvd25zdHJlYW0gaXMgc2xpZ2h0bHkgYnJva2VuLgoKCj4g
WW91IGhhdmVuJ3QgZG9uZSBhbnl0aGluZyB0ZWNobmljYWxseSB3cm9uZywgYnV0IHRoZSB3YXkg
eW91IHN1Ym1pdHRlZAo+IHRoZSB2MiBhbmQgdjMgbWFkZSB0aGVtIGZlZWwgYSBiaXQgbGlrZSB5
b3UgcGlja2VkIHRob3NlIHBhdGNoZXMgZnJvbQo+IHNvbWUgcmFuZG9tIHBsYWNlIGFuZCBzdWJt
aXR0ZWQgdGhlbSB0byB0aGUgbWFpbGluZyBsaXN0IHdpdGhvdXQgcmVhbGx5Cj4gdW5kZXJzdGFu
ZGluZyB0aGUgc3ViamVjdCBtYXR0ZXIuwqAgSW4gb3RoZXIgd29yZHMsIGl0J3MgdGhlIGNvbnRy
aWJ1dG9yJ3MKPiBqb2IgdG8gY29udmluY2UgZXZlcnlvbmUgZWxzZSB0aGF0IHRoZSBzdWJtaXR0
ZWQgcGF0Y2hlcyBhcmUgZmluZSB0bwo+IGJlY29tZSBhY2NlcHRlZCwgYW5kIHRoZSB2MiBhbmQg
djMgc2ltcGx5IGxhY2tlZCB0aGF0LgoKVGhhdCdzIGZhaXIuIEkgd2FzIHVuZGVyIHRoZSBhc3N1
bXB0aW9uIEkgaGFkIHRvIGtlZXAgdGhlIHBhdGNoZXMgbW9zdGx5IAppbiBpdHMgb3JpZ2luYWwg
Zm9ybS4KCgo+IEkgd29uZGVyIGhvdyB3b3VsZCBzb21lIGZvcmdlIHByZXZlbnQgInNwYW1taW5n
Ij/CoCBJdCBpc24ndCBhYm91dCB0aGUKPiBwb3NzaWJsZSAic3BhbW1pbmciLCBidXQgYWJvdXQg
dGhlIGFjdCBvZiBzdWJtaXR0aW5nIGRpZmZlcmVudCB2ZXJzaW9ucywKPiB3aGljaCB3b3VsZCBi
ZSBwcmVzZW50IHJlZ2FyZGxlc3Mgb2YgdGhlIHdheSB0aGV5J2QgYmUgc3VibWl0dGVkLCBhbmQK
PiB0aGUgcmV2aWV3ZXJzIHdvdWxkIG5lZWQgdG8gYmUgYXdhcmUgKGkuZS4gInNwYW1tZWQiKSBv
ZiB0aGVtIGFueXdheS4KCkF0IGxlYXN0IHdpdGggR2l0bGFiICYgQ29kZWJlcmcsIGEgbG90IG9m
IHRoZSBub3RpZmljYXRpb25zIGNhbiBiZSBtdXRlZCAKKEkgYmVsaWV2ZSB1cGRhdGVzIHRvIHB1
bGwgcmVxdWVzdHMgaXMgb25lIG9mIHRoZW0pIGFuZCBwaXBlbGluZXMgY2FuIGJlIApjcmVhdGVk
IHRvIGVuc3VyZSB0aGF0IGZvcm1hdHRpbmcgaXMgY29ycmVjdCBhbmQgdGhhdCB0aGUgcHJvcGVy
IHN1YiAKbWFpbnRhaW5lcnMgYXJlIG5vdGlmaWVkIGF1dG9tYWdpY2FsbHkuIEluIG15IG9waW5p
b24sIGI0IGp1c3QgYnJpbmdzIApzb21lIG9mIHRoZSBmb3JnZSdzIGZ1bmN0aW9uYWxpdGllcyBp
bnRvIGFuIGVtYWlsIGJhc2VkIHdvcmtmbG93LCBidXQgCndpbGwgaGF2ZSB0byBmaWdodCBpdCdz
IG93biBwcm9ibGVtcyBzdWNoIGFzOiAKaHR0cHM6Ly9zb2NpYWwua2VybmVsLm9yZy9ub3RpY2Uv
QXlwdmRUV3lBczVrbTBHYzNrLiBJIGRvbid0IG1lYW4gdG8gCmRldHJhY3QgZnJvbSBpdDsgaXQg
aXMgdmVyeSBjb21tZW5kYWJsZSB3aGF0IEtvbnN0YW50aW4gUnlhYml0c2V2IGlzIGRvaW5nLgoK
SWYgdGhlcmUgYXJlIGNvbmNlcm5zIGFib3V0IGNlbnRyYWxpemF0aW9uLCB0aGVyZSBhcmUgYWx0
ZXJuYXRpdmVzIGxpa2UgClJhZGljYWwuIEkgaGVhcmQgdGhhdCBDb2RlYmVyZyBpcyBsb29raW5n
IHRvIGFsc28gZGVjZW50cmFsaXplIGluIHRoZSAKZnV0dXJlIGFzIHdlbGwgKE1heWJlIHVzaW5n
IFJhZGljYWwncyBwcm90b2NvbD8gTm90IHN1cmUpLiBJZiB0aGVyZSBpcyBhIApjYWxsIHRvIGFj
dGlvbiBmcm9tIHRoZSBMaW51eCBtYWludGFpbmVycyBhYm91dCBsb29raW5nIGludG8gCmRlY2Vu
dHJhbGl6ZWQgZm9yZ2VzLCBJIGJldCB0aGVyZSB3b3VsZCBiZSBtYW55IHByb2plY3RzIGV4Y2l0
ZWQgdG8gYmUgCnVzZWQgYnkgdGhlIExpbnV4IGtlcm5lbC4gSXQgd2lsbCBhbHNvIGhlbHAgZ2V0
IG5ldyBwZW9wbGUgZXhjaXRlZCB0byBiZSAKaW52b2x2ZWQgaW4gdGhlIExpbnV4IGtlcm5lbCBh
bmQgcG90ZW50aWFsbHkgYmVjb21lIGtlcm5lbCBtYWludGFpbmVycyAKaW4gdGhlIGZ1dHVyZQoK
SSB0aGluayBJIHdpbGwgbGVhdmUgaXQgYXQgdGhhdCwgYXMgSSBkb24ndCB3YW50IHRvIGZ1cnRo
ZXIgZGVyYWlsIHRoZSAKY29udmVyc2F0aW9uIGZyb20gdGhlIHBwcCBzZXJpZXMuCgoKUnVkcmFr
c2hhCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=
