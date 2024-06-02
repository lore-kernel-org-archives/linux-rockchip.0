Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C585C27C44
	for <linux-rockchip@archiver.kernel.org>; Sun,  2 Jun 2024 07:59:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y/vdg5O8n5y6MOpzTg9fepeaQEwCkPX4Q5ZPteV2nZo=; b=0y/7o/MFadxxI/
	KLSmN4biELt0D33e/pvziiMDg0GTWsxANac3I21OUNF6+HGVNDtRMk3Lu5j87DRWi90CA46QTRbva
	T/mXbJqqXXlmi+DWHyDRC5d0/InL9jcEyc94nvMLIR+YTq0zQHnzvaa48ZScxDW41EU0sxqmN5Ts/
	jCVWP3gQFmFmwTk+0VglmlEKOsLppzojgIwpumK8plbHjk65VmB8Ja8MLITeLcq6EiXczVFL7Fm88
	56xlbrq+WGzKkyj4ThJMRfTHUZZuLX5BdjzAYtkne/SmiVEtnz6BF/8M21tIglknI5df32v+BNOs0
	+glD0X0XBPnA5EpKYL+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sDg7Z-0000000DvKF-2krb;
	Sun, 02 Jun 2024 07:59:17 +0000
Received: from mail-ed1-x531.google.com ([2a00:1450:4864:20::531])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sDg7U-0000000DvJT-1kLS;
	Sun, 02 Jun 2024 07:59:15 +0000
Received: by mail-ed1-x531.google.com with SMTP id 4fb4d7f45d1cf-57a4ce82f30so858931a12.0;
        Sun, 02 Jun 2024 00:59:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717315150; x=1717919950; darn=lists.infradead.org;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GNH+q9S8FeOpIJMVISEmaZGU+MHC6ijhQj3KIdeVPco=;
        b=Zziz+mNM1Xh3OKBYA9mAObtOpjMa52QvfMXkUY2A1UHpVCYlteQ6q9L8RxRsnlSif5
         7IEUIQhO1zzyTHv6Yfic33PnSWwXEU6LFUT+37FkZXR5YYqgn0s7Kn6MKdEp0Rw8lrdU
         KHF+kQsgcHgqV38sWCIOHLIkgPGRpmEL+gO/sT8zxNCBqfijALwjQVGpViIlghWKwT5/
         /ftrywB61rJMlRG31PfEYayh5RELk1v4KvChhEoU8zCmYvTK/CQhzr6Eft2/wJOXdSte
         pzNMElbVogyF7Z8nfvcABBwCgKixtuD61X/5P54/HsAoQlzqDtKohiiGNRoOyB5FZisW
         6W5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717315150; x=1717919950;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GNH+q9S8FeOpIJMVISEmaZGU+MHC6ijhQj3KIdeVPco=;
        b=vmPPHdE1AFXKGKy6KfrNHy0oXoMkEZT8sRczB0UZZzlzBAnb3NMacAkuUXrSUGnqcf
         AoX/rfaiSIPx+qX1iXtbSGAPkPCDhRb1WN4F/6ZJzqQcjgxALJrevuh9kHll15yqFKjh
         jHCQllVKX99fRZ7oUTkEfcFdoP1DoZWpbsH9bgwTzqbpmonMIABISLDznzdX6Q4wBEkF
         7EvsfBgP3+n/UrKqVKHpI1B822jlH7V7nE6FzGd6zMtN+Mldi36SlGWV0ACusI064S2K
         6JPYB0fk3DXtbH63yiDjB4D+wcZgLMQYMTxVE6YNWlvOK5+KDLD8U3e3z2025011bVQR
         phpQ==
X-Forwarded-Encrypted: i=1; AJvYcCWxZKF1TB6a3V9fXMv9ERMDME9WT1TZiUCVyD3WhbTBTTVNo1ywQnSAzluwoguJer+DFPoltx0CQbRQEePI49Hjw1hQc43wt9CrCVYVqPWUwxH2OY30pKNHBgkVugRsp7612J4QfrBT9bLot05d9q6+YPuw4WLDY2s=
X-Gm-Message-State: AOJu0YylqSqYQoUagjDOF11ZXXmw40BaEBzEAOp6WOI/d9QxzysKHwmw
	zD6nnKU36l2sGuuCbnYMhHym2aFpY7iaZuGnVgoqj5LCGxWRC9O+
X-Google-Smtp-Source: AGHT+IEzoVR/QekSFlxwlG1y8gK8vH3Bdx5XnDmjrRTB2zenBkCf2dUGrpltlAYKRVdfu3RIHU7Dww==
X-Received: by 2002:a17:906:f59c:b0:a68:e335:3e67 with SMTP id a640c23a62f3a-a68e3354039mr160861566b.17.1717315149813;
        Sun, 02 Jun 2024 00:59:09 -0700 (PDT)
Received: from smtpclient.apple (84-10-100-139.static.chello.pl. [84.10.100.139])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a68f6a557f9sm42073966b.83.2024.06.02.00.59.07
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 02 Jun 2024 00:59:09 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.15\))
Subject: Re: [PATCH 00/14] Add initial support for the Rockchip RK3588 HDMI TX
 Controller
From: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
In-Reply-To: <20240601-b4-rk3588-bridge-upstream-v1-0-f6203753232b@collabora.com>
Date: Sun, 2 Jun 2024 09:59:03 +0200
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>,
 Sandy Huang <hjc@rock-chips.com>,
 Heiko Stuebner <heiko@sntech.de>,
 Andy Yan <andy.yan@rock-chips.com>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Mark Yao <markyao0591@gmail.com>,
 dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org,
 kernel@collabora.com,
 Alexandre ARNOUD <aarnoud@me.com>,
 Luis de Arquer <ldearquer@gmail.com>,
 Algea Cao <algea.cao@rock-chips.com>
Message-Id: <E1316DC2-0822-4B82-BCD0-99904D4741EF@gmail.com>
References: <20240601-b4-rk3588-bridge-upstream-v1-0-f6203753232b@collabora.com>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
X-Mailer: Apple Mail (2.3654.120.0.1.15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240602_005912_489094_EDC11023 
X-CRM114-Status: GOOD (  29.02  )
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

KHJlc2VudCBhcyBwbGFpbiB0ZXh0IGluc3RlYWQgb2YgaHRtbCkKIApDcmlzdGlhbiwKCkkgd2Fz
IGF3YWl0aW5nIG92ZXIgeWVhciBmb3IgdGhpcyB3b3JrIQoKSeKAmW0gZGV2ZWwuIDIgZGlzdHJv
cyB3aGVyZSBzaW5nbGUgbWFpbmxpbmUga2VybmVsIHNlcnZlcyAyODM1LzI3MTEvMjcxMi9oNi9o
MzEzL2g2MTYvaDYxOC9yazMzMjgvcmszMzk5L3JrMzU2Ni9yazM1NjgvcmszNTg4L3M5MDUvczkx
Mi9zbTEvZzEyLgoKQmVmb3JlIHRoaXMgd29yayByazM1ODggd2FzIGV4Y2x1ZGVkIGJlY2F1c2Ug
cmszNTg4IGhkbWkgd2FzIHJlZ3Jlc3NpbmcgaGRtaSBvbiBvdGhlciBzb2NzLgpXaXRoIHRoaXMg
Y29kZSBhbGwgb3RoZXIgc29jcyBzZWVtcyB3b3JrIG9rIG5vdy4gUGVyZmVjdC4KCkFzIG9uZSBv
ZiBteSBwcm9qZWN0IGlzIG11bHRpbWVkaWEgYXBwbGlhbmNlIC0gZ29vZCBuZXdzIGlzIHRoYXQg
bm93IGkgY2FuIG5pY2VseSBwbGF5IGhkdHYgb24gcmszNTg4IHVzaW5nIG1haW5saW5lIGNvbW1v
biA2LjkuMyBrZXJuZWwgYW5k4oCmLnN0YXJ0ZWQgdG8gaGVhciBmcm9tIG15IHVzZXJzIGEgbG90
IG9mIFFzIGxpa2U6IOKAnmFoIHNvIG5pY2UhIHJrMzU4OCBub3cgd29ya3MgbmljZWx54oCmLmJ1
dCB3aGVyZSBpcyBoZG1pIGF1ZGlvIGFuZCBjZWM/4oCdCgpJdCB3aWxsIGJlIGZhbnRhc3RpYyB0
byBhZGQgKGUuZy4gYnkgYmFja3BvcnQgRGV0bGV2IGh0dHBzOi8vZ2l0bGFiLmNvbGxhYm9yYS5j
b20vaGFyZHdhcmUtZW5hYmxlbWVudC9yb2NrY2hpcC0zNTg4L2xpbnV4Ly0vdHJlZS9yazM1ODgt
aGRtaS1hdWRpbz9yZWZfdHlwZT1oZWFkcyApIGF1ZGlvIGNvZGUgdG8gZ2V0IGJhc2ljIHN1cHBv
cnQgaGRtaSBhdWRpbz8KICAgCnRoeCBhZ2FpbiBmb3IgZmFudGFzdGljIHdvcmshCgo+IFdpYWRv
bW/Fm8SHIG5hcGlzYW5hIHByemV6IENyaXN0aWFuIENpb2NhbHRlYSA8Y3Jpc3RpYW4uY2lvY2Fs
dGVhQGNvbGxhYm9yYS5jb20+IHcgZG5pdSAwMS4wNi4yMDI0LCBvIGdvZHouIDE1OjEyOgo+IAo+
IFRoZSBSSzM1ODggU29DIGZhbWlseSBpbnRlZ3JhdGVzIGEgUXVhZC1QaXhlbCAoUVApIHZhcmlh
bnQgb2YgdGhlCj4gU3lub3BzeXMgRGVzaWduV2FyZSBIRE1JIFRYIGNvbnRyb2xsZXIgdXNlZCBp
biB0aGUgcHJldmlvdXMgU29Dcy4KPiAKPiBJdCBpcyBIRE1JIDIuMSBjb21wbGlhbnQgYW5kIHN1
cHBvcnRzIHRoZSBmb2xsb3dpbmcgZmVhdHVyZXMsIGFtb25nCj4gb3RoZXJzOgo+IAo+ICogRml4
ZWQgUmF0ZSBMaW5rIChGUkwpCj4gKiA0S0AxMjBIeiBhbmQgOEtANjBIeiB2aWRlbyBtb2Rlcwo+
ICogVmFyaWFibGUgUmVmcmVzaCBSYXRlIChWUlIpIGluY2x1ZGluZyBRdWljayBNZWRpYSBTd2l0
Y2hpbmcgKFFNUykKPiAqIEZhc3QgVmFjdGl2ZSAoRlZBKQo+ICogU0NEQyBJMkMgRERDIGFjY2Vz
cwo+ICogVE1EUyBTY3JhbWJsZXIgZW5hYmxpbmcgMjE2MHBANjBIeiB3aXRoIFJHQi9ZQ2JDcjQ6
NDo0Cj4gKiBZQ2JDcjQ6MjowIGVuYWJsaW5nIDIxNjBwQDYwSHogYXQgbG93ZXIgSERNSSBsaW5r
IHNwZWVkcwo+ICogTXVsdGktc3RyZWFtIGF1ZGlvCj4gKiBFbmhhbmNlZCBBdWRpbyBSZXR1cm4g
Q2hhbm5lbCAoRUFSQykKPiAKPiBUaGlzIGlzIHRoZSBsYXN0IHJlcXVpcmVkIGNvbXBvbmVudCB0
aGF0IG5lZWRzIHRvIGJlIHN1cHBvcnRlZCBpbiBvcmRlcgo+IHRvIGVuYWJsZSB0aGUgSERNSSBv
dXRwdXQgZnVuY3Rpb25hbGl0eSBvbiB0aGUgUkszNTg4IGJhc2VkIFNCQ3MsIHN1Y2gKPiBhcyB0
aGUgUkFEWEEgUm9jayA1Qi4gVGhlIG90aGVyIGNvbXBvbmVudHMgYXJlIHRoZSBWaWRlbyBPdXRw
dXQKPiBQcm9jZXNzb3IgKFZPUDIpIGFuZCB0aGUgU2Ftc3VuZyBJUCBiYXNlZCBIRE1JL2VEUCBU
WCBDb21ibyBQSFksIGZvcgo+IHdoaWNoIGJhc2ljIHN1cHBvcnQgaGFzIGJlZW4gYWxyZWFkeSBt
YWRlIGF2YWlsYWJsZSB2aWEgWzFdIGFuZCBbMl0sCj4gcmVzcGVjdGl2ZWx5Lgo+IAo+IFRoZSBw
YXRjaGVzIGFyZSBncm91cGVkIGFzIGZvbGxvd3M6Cj4gKiBQQVRDSCAxLi43OiBEVyBIRE1JIFRY
IGRyaXZlciByZWZhY3RvciB0byBtaW5pbWl6ZSBjb2RlIGR1cGxpY2F0aW9uIGluCj4gIHRoZSBu
ZXcgUVAgZHJpdmVyIChubyBmdW5jdGlvbmFsIGNoYW5nZXMgaW50ZW5kZWQpCj4gCj4gKiBQQVRD
SCA4Li4xMTogUm9ja2NoaXAgRFcgSERNSSBnbHVlIGRyaXZlciBjbGVhbnVwL2ltcHJvdmVtZW50
cyAobm8KPiAgZnVuY3Rpb25hbCBjaGFuZ2VzIGludGVuZGVkKQo+IAo+ICogUEFUQ0ggMTIuLjEz
OiBUaGUgbmV3IERXIEhETUkgUVAgVFggZHJpdmVyIHJldXNpbmcgdGhlIHByZXZpb3VzbHkKPiAg
ZXhwb3J0ZWQgZnVuY3Rpb25zIGFuZCBzdHJ1Y3RzIGZyb20gZXhpc3RpbmcgRFcgSERNSSBUWCBk
cml2ZXIKPiAKPiAqIFBBVENIIDE0OiBSb2NrY2hpcCBEVyBIRE1JIGdsdWUgZHJpdmVyIHVwZGF0
ZSB0byBzdXBwb3J0IFJLMzU4OCBhbmQKPiAgbWFrZSB1c2Ugb2YgRFcgSERNSSBRUCBUWAo+IAo+
IFRoZXkgcHJvdmlkZSBqdXN0IHRoZSBiYXNpYyBIRE1JIHN1cHBvcnQgZm9yIG5vdywgaS5lLiBS
R0Igb3V0cHV0IHVwIHRvCj4gNEtANjBIeiwgd2l0aG91dCBhdWRpbywgQ0VDIG9yIGFueSBvZiB0
aGUgSERNSSAyLjEgc3BlY2lmaWMgZmVhdHVyZXMuCj4gQWxzbyBub3RlIHRoZSB2b3AyIGRyaXZl
ciBpcyBjdXJyZW50bHkgbm90IGFibGUgdG8gcHJvcGVybHkgaGFuZGxlIGFsbAo+IGRpc3BsYXkg
bW9kZXMgc3VwcG9ydGVkIGJ5IHRoZSBjb25uZWN0ZWQgc2NyZWVucywgZS5nLiBpdCBkb2Vzbid0
IGNvcGUKPiB3aXRoIG5vbi1pbnRlZ2VyIHJlZnJlc2ggcmF0ZXMuCj4gCj4gQSBwb3NzaWJsZSB3
b3JrYXJvdW5kIGNvbnNpc3RzIG9mIGVuYWJsaW5nIHRoZSBkaXNwbGF5IGNvbnRyb2xsZXIgdG8K
PiBtYWtlIHVzZSBvZiB0aGUgY2xvY2sgcHJvdmlkZWQgYnkgdGhlIEhETUkgUEhZIFBMTC4gVGhp
cyBpcyBzdGlsbCB3b3JrCj4gaW4gcHJvZ3Jlc3MgYW5kIHdpbGwgYmUgc3VibWl0dGVkIGxhdGVy
LCBhcyB3ZWxsIGFzIHRoZSByZXF1aXJlZCBEVFMKPiB1cGRhdGVzLgo+IAo+IFRvIGZhY2lsaXRh
dGUgdGVzdGluZyBhbmQgZXhwZXJpbWVudGF0aW9uLCBhbGwgSERNSSBvdXRwdXQgcmVsYXRlZAo+
IHBhdGNoZXMsIGluY2x1ZGluZyB0aG9zZSBwYXJ0IG9mIHRoaXMgc2VyaWVzLCBhcmUgYXZhaWxh
YmxlIGF0IFszXS4KPiBTbyBmYXIgSSBjb3VsZCBvbmx5IHZlcmlmeSB0aGlzIG9uIHRoZSBSQURY
QSBSb2NrIDNBIGFuZCA1QiBib2FyZHMuCj4gCj4gVGhhbmtzLAo+IENyaXN0aWFuCj4gCj4gWzFd
OiA1YTAyOGU4ZjA2MmYgKCJkcm0vcm9ja2NoaXA6IHZvcDI6IEFkZCBzdXBwb3J0IGZvciByazM1
ODgiKQo+IFsyXTogNTUzYmUyODMwYzVmICgicGh5OiByb2NrY2hpcDogQWRkIFNhbXN1bmcgSERN
SS9lRFAgQ29tYm8gUEhZIGRyaXZlciIpCj4gWzNdOiBodHRwczovL2dpdGxhYi5jb2xsYWJvcmEu
Y29tL2hhcmR3YXJlLWVuYWJsZW1lbnQvcm9ja2NoaXAtMzU4OC9saW51eC8tL2NvbW1pdHMvcmsz
NTg4LWhkbWktYnJpZGdlLXY2LjEwLXJjMQo+IAo+IFNpZ25lZC1vZmYtYnk6IENyaXN0aWFuIENp
b2NhbHRlYSA8Y3Jpc3RpYW4uY2lvY2FsdGVhQGNvbGxhYm9yYS5jb20+Cj4gLS0tCj4gQ3Jpc3Rp
YW4gQ2lvY2FsdGVhICgxNCk6Cj4gICAgICBkcm0vYnJpZGdlOiBkdy1oZG1pOiBTaW1wbGlmeSBj
bG9jayBoYW5kbGluZwo+ICAgICAgZHJtL2JyaWRnZTogZHctaGRtaTogQWRkIGR3LWhkbWktY29t
bW9uLmggaGVhZGVyCj4gICAgICBkcm0vYnJpZGdlOiBkdy1oZG1pOiBDb21tb25pemUgZHdfaGRt
aV9pMmNfYWRhcHRlcigpCj4gICAgICBkcm0vYnJpZGdlOiBkdy1oZG1pOiBGYWN0b3Igb3V0IEFW
SSBpbmZvZnJhbWUgc2V0dXAKPiAgICAgIGRybS9icmlkZ2U6IGR3LWhkbWk6IEZhY3RvciBvdXQg
dm1vZGUgc2V0dXAKPiAgICAgIGRybS9icmlkZ2U6IGR3LWhkbWk6IEZhY3RvciBvdXQgaGRtaV9k
YXRhX2luZm8gc2V0dXAKPiAgICAgIGRybS9icmlkZ2U6IGR3LWhkbWk6IENvbW1vbml6ZSBkd19o
ZG1pX2Nvbm5lY3Rvcl9jcmVhdGUoKQo+ICAgICAgZHJtL3JvY2tjaGlwOiBkd19oZG1pOiBVc2Ug
bW9kZXJuIGRybV9kZXZpY2UgYmFzZWQgbG9nZ2luZwo+ICAgICAgZHJtL3JvY2tjaGlwOiBkd19o
ZG1pOiBTaW1wbGlmeSBjbG9jayBoYW5kbGluZwo+ICAgICAgZHJtL3JvY2tjaGlwOiBkd19oZG1p
OiBVc2UgZGV2bV9yZWd1bGF0b3JfZ2V0X2VuYWJsZSgpCj4gICAgICBkcm0vcm9ja2NoaXA6IGR3
X2hkbWk6IERyb3Agc3VwZXJmbHVvdXMgYXNzaWdubWVudHMgb2YgbXBsbF9jZmcsIGN1cl9jdHIg
YW5kIHBoeV9jb25maWcKPiAgICAgIGR0LWJpbmRpbmdzOiBkaXNwbGF5OiByb2NrY2hpcCxkdy1o
ZG1pOiBBZGQgY29tcGF0aWJsZSBmb3IgUkszNTg4Cj4gICAgICBkcm0vYnJpZGdlOiBzeW5vcHN5
czogQWRkIERXIEhETUkgUVAgVFggY29udHJvbGxlciBkcml2ZXIKPiAgICAgIGRybS9yb2NrY2hp
cDogZHdfaGRtaTogQWRkIGJhc2ljIFJLMzU4OCBzdXBwb3J0Cj4gCj4gLi4uL2Rpc3BsYXkvcm9j
a2NoaXAvcm9ja2NoaXAsZHctaGRtaS55YW1sICAgICAgICAgfCAxMjcgKysrLQo+IGRyaXZlcnMv
Z3B1L2RybS9icmlkZ2Uvc3lub3BzeXMvTWFrZWZpbGUgICAgICAgICAgIHwgICAyICstCj4gZHJp
dmVycy9ncHUvZHJtL2JyaWRnZS9zeW5vcHN5cy9kdy1oZG1pLWNvbW1vbi5oICAgfCAxNzkgKysr
KysKPiBkcml2ZXJzL2dwdS9kcm0vYnJpZGdlL3N5bm9wc3lzL2R3LWhkbWktcXAuYyAgICAgICB8
IDc4NyArKysrKysrKysrKysrKysrKysrCj4gZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9zeW5vcHN5
cy9kdy1oZG1pLXFwLmggICAgICAgfCA4MzEgKysrKysrKysrKysrKysrKysrKysrCj4gZHJpdmVy
cy9ncHUvZHJtL2JyaWRnZS9zeW5vcHN5cy9kdy1oZG1pLmMgICAgICAgICAgfCAzNTMgKysrLS0t
LS0tCj4gZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2R3X2hkbWktcm9ja2NoaXAuYyAgICAgICAg
fCAzNTEgKysrKysrKy0tCj4gaW5jbHVkZS9kcm0vYnJpZGdlL2R3X2hkbWkuaCAgICAgICAgICAg
ICAgICAgICAgICAgfCAgIDggKwo+IDggZmlsZXMgY2hhbmdlZCwgMjI5MCBpbnNlcnRpb25zKCsp
LCAzNDggZGVsZXRpb25zKC0pCj4gLS0tCj4gYmFzZS1jb21taXQ6IDE2MTNlNjA0ZGYwY2QzNTlj
ZjJhN2ZiZDliZTdhMGJjZmFjZmFiZDAKPiBjaGFuZ2UtaWQ6IDIwMjQwNjAxLWI0LXJrMzU4OC1i
cmlkZ2UtdXBzdHJlYW0tYTI3YmFmZjFiOGZjCj4gCj4gCj4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KPiBMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
PiBMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCj4gaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
