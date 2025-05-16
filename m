Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04E4FC2D0CD
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 May 2025 00:30:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YpOF9cM8YONA+GoiQG+NlzJCI28yOsptYU0Wp9dnWUg=; b=oG9BBINIvPzYgk
	84vhgSAWOwjoClMwTr0GHXjSX4eDp3OnONWC5vx5laJpiGj1jwjaFk3FiX82+wZcTmanuBCsRNIpN
	/AEdVYsRdZ2sBe2l87Uk1m3AXgC9omhut/zZbPoyuUBOXDL48/7G5K3xigzNRUuXoHvmIwIMxed1G
	oKPU1BbkPT4vAgfbZd/v6V1LGqRVeJtQUGfJtP4PKVX9oUjns1q1Q+jcPMCofegFqJRaGCFpXX3Iz
	9BzSjYzH7GyfGYmAOyC9hginuNvripCQLDCcIlYdi00u3YAeC+DkfkdBDMvrjRZDcec539zIVtDXc
	xmvaEgmhG915cz5VJ7sg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFixZ-000000028RJ-0Nvn;
	Fri, 16 May 2025 00:29:57 +0000
Received: from mail-qt1-x82d.google.com ([2607:f8b0:4864:20::82d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFiv7-000000028BJ-3BRn;
	Fri, 16 May 2025 00:27:26 +0000
Received: by mail-qt1-x82d.google.com with SMTP id d75a77b69052e-48d71b77cc0so20907921cf.1;
        Thu, 15 May 2025 17:27:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747355244; x=1747960044; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=m6pURmVL5pc7CL/4Z+XDERMVUMwy4OEE/W3/L9YQ5D0=;
        b=EqFImN6mnkTNgcEHlzI9zUwp3cP8Ek3tmaCi00C1R7CIZ4zRtEaRk38a8h6tX12gDW
         aYKOe04MmeXuO5ogGQhP3Csv2xNTtje8hzyyGgErEV1o/bEH9oF1JZzo1d9Xsp9ah5xE
         AWoMoY8cxfAi1Gwe4qu2JHqaZgUi1IJDqxIhuKVSEb9xJ06HgZVxX7Dwwx38Zp2KO3pg
         9NTnROsxDwoZy6vHy44RdkxVzJTQPu6ktyP86rBLgzW0qZMMQgr2VIyLnONp+dx8sa1U
         q6HSrii8ckofw5MwcZUsBiIN/Z4lBLXYUWkOiG2pnp/1G2frHCjbNfIgSbczOpuZa7Bh
         +GWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747355244; x=1747960044;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=m6pURmVL5pc7CL/4Z+XDERMVUMwy4OEE/W3/L9YQ5D0=;
        b=Ln1z196VDte4ur7cJoDn1JPna7ztnFjn/XPlskrXW87LX1SCFPMetneUZ/fFOojBXF
         Ihk/p2eGy5rEAVwKS/2nJekR/UnKActDDbgG//pTKxOzfm+05l1eWKKrT0RWJgzdQ4b6
         PGL54sTv5567v67V4qXvDwEy9hoeQeMXekmse7cBm6A+mC4nlYvMAqPLocmvKntnIYLv
         0TAPS52XwqqsBuEKlMZK+5vVV6MiD2uLyxSquT4uLPFpc5hpU85QhrPGHsD/0M6ejUjZ
         QMZuQoBhMMrwZSror7qMQ0j/N84aWVJxaYly9UZcaONOJJw9ON7EiNob0mTw2+zm0r/F
         CNDA==
X-Forwarded-Encrypted: i=1; AJvYcCUZrI1QAxEgbuAX6BJi9TPQ1sv5GTFmNP2XxQAlNI6UQlByVzXp3HeskiqkZaMrpkQoU1AwetH7LDZfOy2v4YCL@lists.infradead.org, AJvYcCVNUO+ypAebwc+95E7mXaYkhcG7qOH6rfKGXYTJFxWV8dESr4mfNC6u9khtajJQ/QcmthffHTrrLvJ9tBvp1bk=@lists.infradead.org
X-Gm-Message-State: AOJu0YzX+Z7MTz/L44iMMvQiOUaecciCLU36w9cMXtZPO+Xd+c3PKiw0
	415L4DpqC6lgGnGp2oLrVch1/8Tyd98lu9Y1BHLLCWbsPjd+erOx9NVj
X-Gm-Gg: ASbGncvF6YxAFRqWLwTpVrLan9LD4lHT5WuDY5njBWl9So4rfLFcOnInZOSdb1F23pm
	p8xlv3ec1kwn2IJehD3NjHuO3QRgsduUxW6hZ0IE7HAl1XACSCr4VmXPCMYEQZFBIEKVfySSMtV
	iyOHCNrDaAj/DFLOwB3X3uZdoLn2rvnUyc4mDnuItQ7gs8N4O8QwlTG7CcLjlMEq4WNBbMMJ3al
	jrlYIB5OPLyP21uXSstsMB38sNg/Zr3zGhgui/m1uM7nHMa6fbYwxkZfTp5Iq5QHLVY8GLJ+6UI
	gkF4bPlX8X2ZJ6f+QeV4qqETjJ33DF0GIn/FhSW10epJBhFJO6zcS1kzPvdFNb4=
X-Google-Smtp-Source: AGHT+IGri81tUaY4oEPMDFBUBSTE06hP6AeMH0PFD71DE1XCAFR5XnVVmfT9+56UOC1NwRJLmcI+KA==
X-Received: by 2002:a05:622a:98d:b0:48f:5d4f:8e86 with SMTP id d75a77b69052e-494ae4ac4b0mr30273961cf.50.1747355243930;
        Thu, 15 May 2025 17:27:23 -0700 (PDT)
Received: from localhost.localdomain ([216.237.233.165])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-494ae3cef1fsm4563991cf.9.2025.05.15.17.27.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 May 2025 17:27:22 -0700 (PDT)
From: John Clark <inindev@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH v5 0/3] [PATCH v5 0/3] Add device tree support for Luckfox Omni3576 and Core3576
Date: Thu, 15 May 2025 20:27:10 -0400
Message-Id: <20250516002713.145026-1-inindev@gmail.com>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250515_172725_796226_297DCD76 
X-CRM114-Status: GOOD (  16.46  )
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
Cc: devicetree@vger.kernel.org, John Clark <inindev@gmail.com>, Andrew Lunn <andrew@lunn.ch>, Quentin Schulz <quentin.schulz@cherry.de>, Jonas Karlman <jonas@kwiboo.se>, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

U3ViamVjdDogW1BBVENIIHY1IDAvM10gQWRkIGRldmljZSB0cmVlIHN1cHBvcnQgZm9yIEx1Y2tm
b3ggT21uaTM1NzYgYW5kIENvcmUzNTc2CgpUaGlzIHNlcmllcyBhZGRzIGRldmljZSB0cmVlIHN1
cHBvcnQgZm9yIHRoZSBMdWNrZm94IE9tbmkzNTc2IENhcnJpZXIKQm9hcmQgd2l0aCB0aGUgQ29y
ZTM1NzYgTW9kdWxlLCBwb3dlcmVkIGJ5IHRoZSBSb2NrY2hpcCBSSzM1NzYgU29DCihmb3VyIENv
cnRleC1BNzIgY29yZXMsIGZvdXIgQ29ydGV4LUE1MyBjb3JlcywgTWFsaS1HNTIgTUMzIEdQVSku
IEl0CmVuYWJsZXMgZXNzZW50aWFsIGZ1bmN0aW9uYWxpdHkgZm9yIGJvb3RpbmcgTGludXggYW5k
IGJhc2ljIGNvbm5lY3Rpdml0eSwKd2l0aCBwbGFucyBmb3IgZnV0dXJlIHN1cHBvcnQgb2YgcGVy
aXBoZXJhbHMgbGlrZSBXaUZpLCBNSVBJLURTSSwgSERNSSwKYW5kIEV0aGVybmV0LgoKVGVzdGVk
IGZlYXR1cmVzIChvbiBMaW51eCA2LjE1LXJjNCk6CiAtIFVBUlQ6IFNlcmlhbCBjb25zb2xlIG9w
ZXJhdGlvbmFsCiAtIFNEIGNhcmQ6IE1vdW50cyBhbmQgcmVhZHMvd3JpdGVzIHN1Y2Nlc3NmdWxs
eQogLSBQQ0llOiBOVk1lIFNTRCBkZXRlY3RlZCwgbW91bnRlZCwgYW5kIGZ1bGx5IGZ1bmN0aW9u
YWwKIC0gVVNCIDIuMDogSG9zdCBwb3J0cyBvcGVyYXRpb25hbAogLSBSVEM6IFRpbWVrZWVwaW5n
IGFuZCB3YWtlLXVwIHRlc3RlZAogLSBMRUQ6IEhlYXJ0YmVhdCB0cmlnZ2VyIGZ1bmN0aW9uYWwK
IC0gZU1NQzogRW5hYmxlZCBpbiBkZXZpY2UgdHJlZSwgbm90IHBvcHVsYXRlZCBvbiB0ZXN0ZWQg
aGFyZHdhcmUKClRoZSBzZXJpZXMgaW5jbHVkZXMgdGhyZWUgcGF0Y2hlczoKIDEuIGR0LWJpbmRp
bmdzOiB2ZW5kb3ItcHJlZml4ZXM6IEFkZCBMdWNrZm94IHZlbmRvciBwcmVmaXgKIDIuIGR0LWJp
bmRpbmdzOiBhcm06IHJvY2tjaGlwOiBBZGQgTHVja2ZveCBPbW5pMzU3NiBhbmQgQ29yZTM1NzYg
YmluZGluZ3MKIDMuIGFybTY0OiBkdHM6IHJvY2tjaGlwOiBBZGQgTHVja2ZveCBPbW5pMzU3NiBi
b2FyZCBzdXBwb3J0CgpUaGUgZGV2aWNlIHRyZWUgaXMgY292ZXJlZCBieSB0aGUgZXhpc3Rpbmcg
Uk9DS0NISVAgQVJDSElURUNUVVJFIGVudHJ5IGluCk1BSU5UQUlORVJTLiBJIGFtIGF3YXJlIG9m
IG9uZ29pbmcgUkszNTc2IHVwc3RyZWFtaW5nIGVmZm9ydHMgKGUuZy4sIGJ5CkNvbGxhYm9yYSkg
YW5kIHdlbGNvbWUgZmVlZGJhY2sgb3IgY29sbGFib3JhdGlvbiB0byBhbGlnbiB3aXRoIG1haW5s
aW5lCmRyaXZlciBkZXZlbG9wbWVudC4KCkNoYW5nZXMgaW4gdjU6CiAtIFBhdGNoIDE6IE1vdmVk
IGx1Y2tmb3ggdmVuZG9yIHByZWZpeCB0byBjb3JyZWN0IGFscGhhYmV0aWNhbCBwb3NpdGlvbgog
ICBiZXR3ZWVuIGxzaSBhbmQgbHVuem4gKFF1ZW50aW4gU2NodWx6LCB2NCkuCiAgIEFja2VkLWJ5
OiBDb25vciBEb29sZXkgPGNvbm9yLmRvb2xleUBtaWNyb2NoaXAuY29tPgogICBBY2tlZC1ieTog
S3J6eXN6dG9mIEtvemxvd3NraSA8a3J6eXN6dG9mLmtvemxvd3NraUBsaW5hcm8ub3JnPgogLSBQ
YXRjaCAyOiBVbmNoYW5nZWQgZnJvbSB2NC4KICAgUmV2aWV3ZWQtYnk6IFF1ZW50aW4gU2NodWx6
IDxxdWVudGluLnNjaHVsekBjaGVycnkuZGU+CiAgIEFja2VkLWJ5OiBSb2IgSGVycmluZyAoQXJt
KSA8cm9iaEBrZXJuZWwub3JnPgogLSBQYXRjaCAzOgogICAtIFVwZGF0ZWQgY29weXJpZ2h0IHRv
IGluY2x1ZGUgSm9obiBDbGFyayAoUXVlbnRpbiBTY2h1bHosIHY0KS4KICAgLSBSZW9yZGVyZWQg
dG9wLWxldmVsIG5vZGVzIGFscGhhYmV0aWNhbGx5IHBlciBEVFMgY29kaW5nIHN0eWxlCiAgICAg
KFF1ZW50aW4gU2NodWx6LCB2NCkuCiAgIC0gUmVvcmRlcmVkIENQVSBub2RlIG92ZXJyaWRlcyB0
byBtYXRjaCBhbHBoYWJldGljYWwgb3JkZXIgKGNwdV9iWAogICAgIGJlZm9yZSBjcHVfbFgpIChR
dWVudGluIFNjaHVseiwgdjQpLgogICAtIE1vdmVkIG1tYzAgYWxpYXMgdG8gcmszNTc2LWx1Y2tm
b3gtY29yZTM1NzYuZHRzaSBmb3IgbW9kdWxlLWxldmVsCiAgICAgZU1NQzsga2VwdCBtbWMxIGlu
IHJrMzU3Ni1sdWNrZm94LW9tbmkzNTc2LmR0cyBmb3IgYm9hcmQtc3BlY2lmaWMKICAgICBTRCAo
UXVlbnRpbiBTY2h1bHosIHY0KS4KICAgLSBBZGRlZCByZWd1bGF0b3Itc3RhdGUtbWVtIHRvIHRv
cC1sZXZlbCByZWd1bGF0b3ItZml4ZWQgbm9kZXMgd2l0aAogICAgIGJsYW5rIGxpbmVzLCBvbWl0
dGluZyBkZXByZWNhdGVkIHJlZ3VsYXRvci1zdXNwZW5kLW1pY3Jvdm9sdDsgUE1JQwogICAgIHJl
Z3VsYXRvcnMgcmV0YWluIHJlZ3VsYXRvci1zdXNwZW5kLW1pY3Jvdm9sdCB0byBwcmVzZXJ2ZSBM
dWNrZm94CiAgICAgU0RLIGJlaGF2aW9yLCB3aXRoIGEgZnV0dXJlIHBhdGNoIHBsYW5uZWQgYWZ0
ZXIgUks4MDYgZHJpdmVyCiAgICAgdmFsaWRhdGlvbiAoUXVlbnRpbiBTY2h1bHosIHY0KS4KICAg
LSBSZW1vdmVkIHJlZHVuZGFudCBtYXgtZnJlcXVlbmN5IGZyb20gJnNkbW1jLCBhcyBpdCBtYXRj
aGVzCiAgICAgcmszNTc2LmR0c2kgKFF1ZW50aW4gU2NodWx6LCB2NCkuCiAgIC0gQWRkZWQgdm1t
Yy1zdXBwbHkgYW5kIHZxbW1jLXN1cHBseSB0byAmc2RoY2kgdG8gc3VwcG9ydCBlTU1DIChKb25h
cwogICAgIEthcmxtYW4sIHYyKS4KICAgLSBDb25maXJtZWQgYmxhbmsgbGluZSBzdHlsZSBjb21w
bGlhbmNlIGFjcm9zcyBEVFNJIGFuZCBEVFMgKEpvbmFzCiAgICAgS2FybG1hbiwgdjIpLgoKQ2hh
bmdlcyBpbiB2NDoKIC0gUGF0Y2ggMTogVW5jaGFuZ2VkLCBBY2tlZC1ieTogQ29ub3IgRG9vbGV5
LgogLSBQYXRjaCAyOiBGaXhlZCBiaW5kaW5nIGZvciBPbW5pMzU3NiB0byB1c2UgY29ycmVjdCBl
bnVtIHN5bnRheCAoZW51bToKICAgW2x1Y2tmb3gsb21uaTM1NzZdKSwgYWRkZWQgbHVja2ZveCxj
b3JlMzU3NiB0byBjb21wYXRpYmxlIHN0cmluZwogICAoSGVpa28gU3R1ZWJuZXIsIHYzKS4KIC0g
UGF0Y2ggMzogVXBkYXRlZCBjb21wYXRpYmxlIHN0cmluZyBpbiByazM1NzYtbHVja2ZveC1vbW5p
MzU3Ni5kdHMgdG8KICAgbWF0Y2ggcmV2aXNlZCBiaW5kaW5nLgoKQ2hhbmdlcyBpbiB2MzoKIC0g
U3BsaXQgZGV2aWNlIHRyZWUgaW50byByazM1NzYtbHVja2ZveC1jb3JlMzU3Ni5kdHNpIGFuZAog
ICByazM1NzYtbHVja2ZveC1vbW5pMzU3Ni5kdHMgZm9yIG1vZHVsYXJpdHkgKEpvbmFzIEthcmxt
YW4sIHYyKS4KIC0gUGF0Y2ggMzoKICAgLSBBZGRlZCBwaW5jdHJsIGZvciBncmVlbiBMRUQgR1BJ
TyAoSm9uYXMgS2FybG1hbiwgdjIpLgogICAtIFJlb3JkZXJlZCByZWd1bGF0b3Igbm9kZSBwcm9w
ZXJ0aWVzIGZvciBjb25zaXN0ZW5jeSAoSm9uYXMKICAgICBLYXJsbWFuLCB2MikuCiAgIC0gVXNl
ZCBncGlvcyBpbnN0ZWFkIG9mIGRlcHJlY2F0ZWQgZ3BpbyBpbiByZWd1bGF0b3JzIChKb25hcwog
ICAgIEthcmxtYW4sIHYyKS4KICAgLSBSZW1vdmVkIHZlbmRvci1zcGVjaWZpYyBwbWljLXBvd2Vy
LW9mZiBwaW5jdHJsIGFuZCBwd3JrZXkgZnJvbQogICAgIFJLODA2IFBNSUMgKEpvbmFzIEthcmxt
YW4sIHYyKS4KICAgLSBSZW1vdmVkIG5vLW1tYyBmcm9tICZzZG1tYyB0byBlbmFibGUgTU1DIHN1
cHBvcnQgKEpvbmFzIEthcmxtYW4sIHYyKS4KICAgLSBSZW1vdmVkIEV0aGVybmV0IG5vZGVzIChn
bWFjMC9nbWFjMSkgZHVlIHRvIHVucmVsaWFibGUgUEhZIGRyaXZlcgogICAgIChBbmRyZXcgTHVu
biwgdjIpLgogICAtIEFkZHJlc3NlZCBEVEIgd2FybmluZ3Mgd2l0aGluIHNjb3BlIChSb2IgSGVy
cmluZywgdjIpLgogICAtIEFkZGVkIFJORyBub2RlIHBlciBOaWNvbGFzIEZyYXR0YXJvbGnigJlz
IHBhdGNoICh2MykuCgpDaGFuZ2VzIGluIHYyOgogLSBFbmFibGVkIEhETUkgbm9kZSwgdW50ZXN0
ZWQgZHVlIHRvIGRyaXZlciBpc3N1ZXMgKEhlaWtvIFN0dWVibmVyLAogICBOaWNvbGFzIEZyYXR0
YXJvbGksIHYxKS4KIC0gRW5hYmxlZCBFdGhlcm5ldCAxIG5vZGUsIHJlbW92ZWQgaW4gdjMgKEhl
aWtvIFN0dWVibmVyLCB2MSkuCiAtIENsYXJpZmllZCBlTU1DIGVuYWJsZWQgYnV0IHVucG9wdWxh
dGVkIChIZWlrbyBTdHVlYm5lciwgdjEpLgogLSBQYXRjaCAxOiBBY2tlZC1ieTogS3J6eXN6dG9m
IEtvemxvd3NraSA8a3J6eXN6dG9mLmtvemxvd3NraUBsaW5hcm8ub3JnPgogLSBQYXRjaCAyOiBB
Y2tlZC1ieTogS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6eXN6dG9mLmtvemxvd3NraUBsaW5hcm8u
b3JnPgoKU2lnbmVkLW9mZi1ieTogSm9obiBDbGFyayA8aW5pbmRldkBnbWFpbC5jb20+Ci0tLQpK
b2huIENsYXJrICgzKToKIGR0LWJpbmRpbmdzOiB2ZW5kb3ItcHJlZml4ZXM6IEFkZCBsdWNrZm94
IHByZWZpeAogZHQtYmluZGluZ3M6IGFybTogcm9ja2NoaXA6IEFkZCBMdWNrZm94IE9tbmkzNTc2
IGFuZCBDb3JlMzU3NiBiaW5kaW5ncwogYXJtNjQ6IGR0czogcm9ja2NoaXA6IEFkZCBMdWNrZm94
IE9tbmkzNTc2IEJvYXJkIHN1cHBvcnQKCiAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vcm9j
a2NoaXAueWFtbCAgICAgfCAgIDcgKwogLi4uL2RldmljZXRyZWUvYmluZGluZ3MvdmVuZG9yLXBy
ZWZpeGVzLnlhbWwgIHwgICAyICsKIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvTWFrZWZp
bGUgICAgICAgICB8ICAgMSArCiAuLi4vZHRzL3JvY2tjaGlwL3JrMzU3Ni1sdWNrZm94LWNvcmUz
NTc2LmR0c2kgfCA3NDggKysrKysrKysrKysrKysrKysrCiAuLi4vZHRzL3JvY2tjaGlwL3JrMzU3
Ni1sdWNrZm94LW9tbmkzNTc2LmR0cyAgfCAgNTAgKysKIDUgZmlsZXMgY2hhbmdlZCwgODA4IGlu
c2VydGlvbnMoKykKIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tj
aGlwL3JrMzU3Ni1sdWNrZm94LWNvcmUzNTc2LmR0c2kKIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNo
L2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU3Ni1sdWNrZm94LW9tbmkzNTc2LmR0cwoKLS0g
CjIuMzkuNQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=
