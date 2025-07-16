Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1BAB6C83F1B
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Jul 2025 16:01:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TKtAAidYBW8fzAC3pQTF3x5UTutqGPtg6Vk19UF5pGk=; b=b/28aTopw3tyXt
	Yu8DhX9HEorF3qDylep9DQbe+kJNpNsd0KexSA7H+4UH2FH16zpBix066gZplzxt6gBxuSS3ys2gK
	/a9y3EFgnxnzSRJ7ru3bYdp0unqeVsiu04CDJ25pCIAU/vV0HWFU4R/73pd0lAbWBwHAETkPWW6O2
	EAeLyel/8CXldq5XN0iaQefna74M1zR6lBCE3fWHl+LxuUtvjKafwUU6bTJ9topwJ4xp/dFIe6hOL
	WOQcdlKVsWSRFFQap7qNZZ3lHCUubBzxyptQyhExSMDBInOmbL2McihEwPMh/YMW6N3wJLKwAbzoP
	hkpnCCcQ07A/YfMUQRgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uc4Yw-000000088DF-3qCo;
	Wed, 16 Jul 2025 16:00:54 +0000
Received: from mail-qt1-x836.google.com ([2607:f8b0:4864:20::836])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uc4Mo-000000086MV-43O1;
	Wed, 16 Jul 2025 15:48:24 +0000
Received: by mail-qt1-x836.google.com with SMTP id d75a77b69052e-4ab39fb71dbso186561cf.3;
        Wed, 16 Jul 2025 08:48:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1752680901; x=1753285701; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=b/rm8scvzUXrihtknqjtLAemYGQPHMAAfEFq95mpGyA=;
        b=GqG1l72n+GNOyV7/+aDAosj+twStpX3T/SJWkEIcva2FBOft1q7a6i7PovxN5RjIi9
         s/HEpXXTorjgt4j+sd4Xj152cxEuON2EY0TmzSmDLok9zKp9h0s/sE6r4SpMOBTja40d
         0GGZZRoFewXfqZwcYNO92eaZqcq5zZUwbTueTvrCWaQOgNZx2UjdWzXa6E0lOPZnQhmR
         M673WnH3Rjh9NxaVLgHj415eyU2X63DmCYbHP3qOcKEoc/iTUeL/Fd+czDB4ru58/+Wx
         BkeWMIGSJNQMeXdZW5Y5tIy30KRKuqSkkDK8V+hoa7ag0Vy/V4mHfImwNRPemIecPMrf
         5FWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752680901; x=1753285701;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=b/rm8scvzUXrihtknqjtLAemYGQPHMAAfEFq95mpGyA=;
        b=KmIoI+CMsuKNtqpneYBqs+PNdnto37E3dCxyB6gTqdR9yL3zBaLiz1nrBGHXZk66s0
         y9QBvfAooW3ApThvoWjs0QL+UHroGnrrVvcjdtSZv5BH8+1KKUllKuE64FAGdOw63eUl
         v0xD6uuCK3qeY5I3nH5bfIo/4AUR2XAxvOqs//evMya9+o9bI1osNxZV2RNdVMklKNQO
         Ad30V7qjjmj6JODTiGOgwrd30dhJXXn+OLUnPcYxKvttnYhIaJb49/IlXP0t3kVjFEDl
         eGAW3jnO+nzjtUqsJAc1MxBr5hRCQvM/gYKM0A5D/RNicfw3vz19eWHKblPGHjc17Wuq
         omCg==
X-Forwarded-Encrypted: i=1; AJvYcCVV6n9DQYJX+TYhajhyQX1nxCgHtNpCQciMxhGbDqR6GrZlXhFqLvBUHutmBIMPqa8eLYhJfEVP5Q1uYemyk/g=@lists.infradead.org, AJvYcCWoz5VCx0G7lhjMNdVjZt6EcriqK1WLFyADyngJ3abBQOcz+7YqqLBn2+CD9O3o+1RKWdQ7i44mbvYm2IYqzbU1@lists.infradead.org
X-Gm-Message-State: AOJu0Yx3GtioCcBc7nhK9sSKufZ74bpvvrvCoF9q93ltmqs6q1ZrD4td
	NCiV+Cz9+2MBPa0s0rELYdbb0CyrWnsQMRflps1H2h98RVD5oLvRKxUjBSN3plxRBtn9k77B9gk
	f8bammN3l9B+VYPon6NVIvkxPv9QeQrs=
X-Gm-Gg: ASbGncsO8jg8oN8cZ+aRdUDVGwbonrMMrwJ+uqNjJLaGvqgZSPnkCdE0TH21e6WHzdn
	AkW7a7JpjKmoz88UTY6Gi9emd1ihgC5A7Ud4Z/iwaA0GcJ0Hpt1vfu3GS9YVPnPBxME+9vOfMs2
	vMd0dzL2bniseUxeEABb+p6REd0Erv17mndrZS+7zmxXqgixNSNmzL6oKZLkfXkOosSgZN28J3P
	imLtDJj
X-Google-Smtp-Source: AGHT+IGZkuwYf/CRlFpg8ouV1Ni1Gc+/D2pROcmk1GXPjk7rcMxm2v3iwcET9Iy7rmi/yw6IZUJYr4N4D+vNkrJvXEw=
X-Received: by 2002:a05:622a:1309:b0:4a7:70a5:e726 with SMTP id
 d75a77b69052e-4ab90cc9bedmr58696201cf.52.1752680901038; Wed, 16 Jul 2025
 08:48:21 -0700 (PDT)
MIME-Version: 1.0
References: <CABjd4YzCL3U9yf65FUBE6EMqFjZHosULU7fUcjVo9VJ_=Ov+Dw@mail.gmail.com>
 <20250716143016.620430-1-amadeus@jmu.edu.cn>
In-Reply-To: <20250716143016.620430-1-amadeus@jmu.edu.cn>
From: Alexey Charkov <alchark@gmail.com>
Date: Wed, 16 Jul 2025 19:48:09 +0400
X-Gm-Features: Ac12FXy9WoL4TICFh6J03oGYZT5PkKMhZ242n-cx_vXoVMHQVGR-YEvxeooikVM
Message-ID: <CABjd4YzVqOssjMH0VUiUJF78dV9n6Dq6EipWYqUXoxHu6ehUSw@mail.gmail.com>
Subject: Re: [PATCH v2 1/1] arm64: dts: rockchip: rk3528: Add CPU frequency
 scaling support
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, heiko@sntech.de, 
	jonas@kwiboo.se, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	ziyao@disroot.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250716_084823_009941_66F8D658 
X-CRM114-Status: GOOD (  33.52  )
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

T24gV2VkLCBKdWwgMTYsIDIwMjUgYXQgNjozMOKAr1BNIENodWt1biBQYW4gPGFtYWRldXNAam11
LmVkdS5jbj4gd3JvdGU6Cj4KPiBIaSwKPgo+ID4gPiBUaGVyZSBoYXMgb2Z0ZW4gYmVlbiB0aGUg
YXJndW1lbnQgdGhhdCBzZWxlY3RpbmcgYSBmcmVxdWVuY3kgdGhhdCBoYXMKPiA+ID4gdGhlIHNh
bWUgdm9sdGFnZSBhcyBhIGZhc3RlciBmcmVxdWVuY3kgZG9lcyBub3Qgc2F2ZSBhbnkgcG93ZXIu
Cj4gPiA+Cj4gPiA+IEhlbmNlIEkgcmVtZW1iZXIgdGhhdCB3ZSBkcm9wcGVkIHNsb3dlciBmcmVx
dWVuY2llcyBvbiBvdGhlciBzb2NzCj4gPiA+IHRoYXQgc2hhcmUgdGhlIHNhbWUgdm9sdGFnZSB3
aXRoIGEgaGlnaGVyIGZyZXF1ZW5jeS4KPgo+IFNvcnJ5LCBidXQgc29jLmR0c2kgb24gcm9ja2No
aXAgZG9lc24ndCBzZWVtIHRvIGhhdmUgZHJvcHBlZCBzbG93ZXIKPiBmcmVxdWVuY2llcyB3aXRo
IHRoZSBzYW1lIHZvbHRhZ2U/Cj4KPiByazM1NjIuZHRzaTogQ1BVIDQwOE1IeiAtICA4MTZNSHog
ODI1bVYgfCBHUFUgMzAwTUh6IC0gNjAwTUh6IDgyNW1WCj4gcmszNTY2LmR0c2k6IENQVSA0MDhN
SHogLSAgODE2TUh6IDg1MG1WIHwgR1BVIDIwME1IeiAtIDQwME1IeiA4NTBtVgo+IHJrMzU3Ni5k
dHNpOiBDUFUgNDA4TUh6IC0gMTIwME1IeiA3MDBtViB8IEdQVSAzMDBNSHogLSA2MDBNSHogNzAw
bVYKClRoZXkgd2VyZSBkcm9wcGVkIGZvciBSSzM1ODggd2hlbiBtZXJnaW5nIHRoZSBDUFUgT1BQ
cyB0aGF0IEkKc3VibWl0dGVkLCBhZnRlciByZXNwZWN0aXZlIGZlZWRiYWNrIGZyb20gRGFuaWVs
IExlemNhbm8gWzFdLiBHUFUgT1BQcwpmb3IgUkszNTg4IHdlcmUgbWVyZ2VkIGJlZm9yZSB0aGF0
IGRpc2N1c3Npb24sIHNvIHRoZXkgc3RpbGwgY2FycnkKImxvd2VyIGZyZXF1ZW5jeSwgc2FtZSB2
b2x0YWdlIiBlbnRyaWVzLgoKWzFdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC83MzFhYWM2
Ni1mNjk4LTRhMWUtYjllZS00NmE3ZjI0ZWNhZTVAbGluYXJvLm9yZy8KCj4gPiBJLmUuIGhlcmUg
dGhlIG1haW5saW5lIGtlcm5lbCB3aWxsIGFsd2F5cyBjaG9vc2Ugb3BwLTEwMDgwMDAwMDAgYXMK
PiA+IGxvbmcgYXMgdGhlIHJlZ3VsYXRvciB2b2x0YWdlIGlzIDg3NTAwMCB1ViwgdW5sZXNzIGV4
cGxpY2l0bHkKPiA+IHByZXZlbnRlZCBmcm9tIGRvaW5nIHNvIGJ5IHVzZXJzcGFjZS4gV2hlcmVh
cyB0aGUgQlNQIGtlcm5lbCBbMV0gd291bGQKPiA+IHJlcXVlc3QgZGlmZmVyZW50IGZyZXF1ZW5j
aWVzIGZvciBkaWZmZXJlbnQgc2lsaWNvbiwgZS5nLgo+ID4gb3BwLTEyMDAwMDAwMDAgZm9yIGEg
c2lsaWNvbiBzcGVjaW1lbiB3aXRoIGEgbGVha2FnZSB2YWx1ZSBvZiBMNCBhbmQKPiA+IG9wcC0x
NDE2MDAwMDAwIGZvciBhIHNpbGljb24gc3BlY2ltZW4gd2l0aCBhIGxlYWthZ2UgdmFsdWUgb2Yg
TDggLSBhbGwKPiA+IGZvciB0aGUgc2FtZSByZWd1bGF0b3Igdm9sdGFnZSBvZiA4NzUwMDAgdVYu
Cj4gPgo+ID4gU28gbXkgMiBjZW50cyB3b3VsZCBiZTogbm8gYWRkZWQgYmVuZWZpdCBpbiBoYXZp
bmcgImxvd2VyIGZyZXF1ZW5jeSwKPiA+IHNhbWUgdm9sdGFnZSIgT1BQcyBkZWZpbmVkIGhlcmUg
dW50aWwgd2UgaW1wbGVtZW50IGFuIE9QUCBkcml2ZXIKPiA+IHJlYWRpbmcgdGhlIE5WTUVNIHBy
b2dyYW1tZWQgbGVha2FnZSB2YWx1ZXMgYW5kIHNlbGVjdGluZyBkaWZmZXJlbnQKPiA+ICotTCog
dm9sdGFnZXMgZm9yIGVhY2ggT1BQIGRlcGVuZGluZyBvbiB0aG9zZS4gT25jZSB0aGVyZSBpcyB0
aGlzCj4gPiBzdXBwb3J0IGluIHRoZSBkcml2ZXJzLCB0aG9zZSBPUFBzIGNhbiBiZSBhZGRlZCB0
b2dldGhlciB3aXRoCj4gPiBsZWFrYWdlLXNwZWNpZmljIHZvbHRhZ2VzIChvcHAtbWljcm92b2x0
LUwwLi4xMSkuCj4KPiBJIGFzc3VtZSB0aGlzIGhhcyBub3RoaW5nIHRvIGRvIHdpdGggdGhlIE5W
TUVNIGRyaXZlcj8KClRoZXJlIGlzIGFuIE9QUCBkcml2ZXIgaW4gQlNQIGNvZGUgKGZvciB2NiBC
U1Aga2VybmVscykgb3IgYSBjdXN0b20KY3B1ZnJlcSBkcml2ZXIgKGZvciB2NSBCU1Aga2VybmVs
cykgd2hpY2ggcmVhZCBmYWN0b3J5IGRldGVybWluZWQKbGVha2FnZSB2YWx1ZXMgZm9yIHRoZSBw
YXJ0aWN1bGFyIHNpbGljb24gc3BlY2ltZW4gZnJvbSBhbiBPVFAgKE5WTUVNKQpjZWxsIGFuZCBz
ZWxlY3QgZGlmZmVyZW50IGluaXRpYWwgdm9sdGFnZSB2YWx1ZXMgZm9yIGVhY2ggT1BQIGJhc2Vk
IG9uCnRoYXQuIFRob3NlIHZvbHRhZ2VzIGNvbWUgZnJvbSBvcHAtbWljcm92b2x0LUwwLi4xMSBE
VCBwcm9wZXJ0aWVzLAp3aGVyZSAtTDAuLjExIHJlcHJlc2VudCBkaWZmZXJlbnQgbGVha2FnZSB2
YWx1ZXMuIERlZmF1bHQgaXMgbm8gLUwqCnN1ZmZpeC4KClRoZXNlIGFyZSB0aGVuIGZ1cnRoZXIg
dHVuZWQgaW4gdGhlIEJTUCBjb2RlIGJ5IHN0ZXBwaW5nIG92ZXIgYWRqYWNlbnQKcmVndWxhdG9y
IHZvbHRhZ2VzIHVudGlsIHRoZSBQVlRQTEwgcHJvdmlkZXMgYSBmcmVxdWVuY3kgY2xvc2VzdCB0
bwp3aGF0IHRoZSBPUFAgZGVmaW5lcy4gVGhlIGtlcm5lbCB0aGVuIHVzZXMgdGhpcyBjYWxpYnJh
dGVkIHZvbHRhZ2UgZm9yCnRoZSBwYXJ0aWN1bGFyIE9QUCBpbnN0ZWFkIG9mIHRoZSBvcmlnaW5h
bCBEVCBwcm92aWRlZCBvbmUsIGFzIGl0CmJldHRlciBzdWl0cyB0aGUgcGFydGljdWxhciBzaWxp
Y29uIHNwZWNpbWVuIGFuZCBvcGVyYXRpbmcgY29uZGl0aW9ucwooUFZUUExMID0gcHJvY2Vzcywg
dm9sdGFnZSBhbmQgdGVtcGVyYXR1cmUgYWRqdXN0aW5nIFBMTCkuCgpUaGUgY2FsaWJyYXRpb24g
cHJvY2VzcyBjYW4gcmVzdWx0IGluIHZhcnlpbmcgdm9sdGFnZXMgZm9yIFBWVFBMTApiYXNlZCBP
UFBzLCBldmVuIGlmIHRoZSBEVCBsaXN0ZWQgdGhlIHNhbWUgdm9sdGFnZSBmb3IgZWFjaCwgc28g
aXQKbWlnaHQgbWFrZSBzZW5zZSB0byBsaXN0IHRob3NlIG9uY2UgT1BQIGNhbGlicmF0aW9uIHN1
cHBvcnQgZ2V0cwppbmNsdWRlZCBpbiBtYWlubGluZSBkcml2ZXIgY29kZS4gQmVmb3JlIHRoZW4g
dGhleSB3b24ndCBiZSB1c2VkIGJ5CmFueSBvZiB0aGUgZW5lcmd5IGF3YXJlIGdvdmVybm9ycyBh
bmQgd291bGQgdGh1cyBvbmx5IGFkZCBibG9hdC4KCj4gRnJvbSBbMV0sIHdlIGNhbiBzZWUgdGhh
dCB0aGUgdm9sdGFnZSB1c2VkIGJ5IHRoZSBzYW1lIGJvYXJkIGZyb20KPiA0MDhNSHogdG8gMTAw
OE1IeiBpcyB0aGUgc2FtZS4gVGhlIGFjdHVhbCB0ZXN0IGlzIGFsc28gbGlrZSB0aGlzOgo+Cj4g
VGhlIGZpcnN0ICBib2FyZDogQ1BVIDQwOE1IeiAtIDEwMDhNSHogYm90aCA4NTBtViB8IDEyMDBN
SHogODYybVYKPiBUaGUgc2Vjb25kIGJvYXJkOiBDUFUgNDA4TUh6IC0gMTAwOE1IeiBib3RoIDg3
NW1WIHwgMTIwME1IeiA4NzVtVgo+Cj4gWzFdIGh0dHBzOi8vZ2l0aHViLmNvbS9yb2NrY2hpcC1s
aW51eC9rZXJuZWwvYmxvYi9kZXZlbG9wLTUuMTAvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hp
cC9yazM1MjguZHRzaSNMMjI3LUwyNzEKPgo+ID4gUmlnaHQgbm93IE9QUCB2YWx1ZXMgd2l0aCBm
cmVxdWVuY2llcyBsb3dlciB0aGFuIDEwMDgwMDAwMDAgd29uJ3QgYmUKPiA+IHNlbGVjdGVkIGJ5
IGFueSBvZiB0aGUgZW5lcmd5LWF3YXJlIGNwdWZyZXEgZ292ZXJub3JzIGFueXdheSwgYmVjYXVz
ZQo+ID4gdGhlaXIgdm9sdGFnZXMgYXJlIHRoZSBzYW1lLiBFeGVyY2lzZSBmb3IgdGhlIHJlYWRl
cjogdHJ5IHRvIGNvbnZpbmNlCj4gPiBlLmcuIHRoZSAic2NoZWR1dGlsIiBnb3Zlcm5vciB0byBz
ZWxlY3QgYW55dGhpbmcgYmVsb3cgMTAwODAwMDAwMAo+ID4gd2l0aG91dCB0b3VjaGluZwo+ID4g
L3N5cy9kZXZpY2VzL3N5c3RlbS9jcHUvY3B1ZnJlcS9wb2xpY3kwL3NjYWxpbmdfbWF4X2ZyZXEg
OikgVGhpcyBtYXkKPiA+IGNoYW5nZSBpZiBPUFAgdHVuaW5nIGxvZ2ljIGlzIGltcGxlbWVudGVk
IHN1Y2ggYXMgaW4gWzJdOiB0aGF0IHdpbGwKPiA+IHRyeSBhbmQgZmluZCB0aGUgX3ZvbHRhZ2Vf
IHJlc3VsdGluZyBpbiBQVlRQTEwgcHJvdmlkaW5nIGEgZnJlcXVlbmN5Cj4gPiBjbG9zZXN0IHRv
IHdoYXQgY3B1ZnJlcSByZXF1ZXN0ZWQsIGFuZCB1c2UgdGhhdCBmb3IgdGhlIGluLW1lbW9yeSBP
UFAKPiA+IHRhYmxlIGluc3RlYWQgb2Ygd2hhdCB3YXMgcHJvdmlkZWQgYnkgdGhlIERUUy4KPgo+
IFRoYW5rcyBmb3IgdGhlIGNsYXJpZmljYXRpb24sIHNvIHNob3VsZCB3ZSByZW1vdmUgNDA4TUh6
LCA2MDBNSHogYW5kCj4gODE2TUh6IGZyb20gdGhlIG9wcC10YWJsZT8gSXMgdGhpcyBhbHNvIHRo
ZSBjYXNlIHdpdGggR1BVJ3Mgb3BwLXRhYmxlPwoKSSB3b3VsZCBzYXkgeWVzLCBkcm9wIGZvciBu
b3cgYW5kIGFkZCB0aGVtIGxhdGVyIHdoZW4gdGhlIG5lZWQgYXJpc2VzCihpLmUuIG9uY2Ugd2Ug
aGF2ZSBkcml2ZXIgc3VwcG9ydCBmb3IgT1BQIGNhbGlicmF0aW9uIHVzaW5nClBWVE0vUFZUUExM
IGZlZWRiYWNrKS4KClRoZXkgZG8gbm90IGh1cnQgcGVyIHNlLCBidXQgdGhleSByZXN1bHQgaW4g
c29tZXRoaW5nIHVudXNlZCByaWdodCBub3cKYmVjb21pbmcgcGFydCBvZiB0aGUgZGV2aWNlIHRy
ZWUgQUJJLCB0aHVzIGxpbWl0aW5nIG9wdGlvbnMgdG8gcmV0aGluawpzdHVmZiBsYXRlci4KCkJl
c3QgcmVnYXJkcywKQWxleGV5CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXJvY2tjaGlwCg==
