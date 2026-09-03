Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0A22CC61DD3
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Sep 2026 09:17:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DjI54FuEi/JuMnZOb939GZnyicHk+yov+mwDE7oKuTY=; b=UhRcw8Gw8FXoK0
	F3hGrewYgAjhV0yf8XNeiUv53YzUygJmK9+cpyN9IiL8W5GQWIConrIZrFMIePXwIEt++RYttiks4
	KQ9WfReQEgLadew6uAi8Q4KDwcvA37W0GNoe07akroxVqHOfTGJqdyfUSI/neDBbrJG4Ej1RXlfPW
	0vdlxbIxXdnm2UKZ5Iz5jwQJwqcxtY5NPCURBR1Djq+swNkl7dec5GW2afbuPr3NtwgkYr4NsWO/B
	5gxjw4cb2VIhRsitPg3Ctd1kAzBS13rvBs/dwAM7IMnD09in0FQwxhyefNv5SMKA/vpP1lvoMYv7n
	hzljabcRpV3E5wukI3Cw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x23ZH-0000000GutF-10rU;
	Thu, 03 Sep 2026 09:17:11 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x23ZE-0000000Gurs-1LCV
	for linux-rockchip@lists.infradead.org;
	Thu, 03 Sep 2026 09:17:09 +0000
Received: by mail-wr1-x431.google.com with SMTP id ffacd0b85a97d-48431632951so264974f8f.0
        for <linux-rockchip@lists.infradead.org>; Thu, 03 Sep 2026 02:17:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788427026; x=1789031826; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=MJ21EV3MQMwKYFKEIFBZIDEf60/In3kxMYYbf3aP7SA=;
        b=KfS/wvli18OPSaNeaGeJwpOC9FoUkxSnWnTbGlejawTsrJ0ky8rD04CnlSf6K+gqWw
         ZUeOmt1QJwN9ppxpedCC1sbNs0A9Pv0Q0Gx5/Ck1zH2BF2K8Yh7i/DEWsHmGw0Awa+rM
         lFi5FZ4D/ewnWHKmIjt4VReZnjpuDlzPv5kVhQBJvdAy2znNLEcznG6bXRZPOiOLnyfJ
         nOzqN4M73xa75+13TlFoccSAHMgj7G56TdjtfLqvEG8PYVVqjtQU4CAGbSOzsfln/WKl
         0h91F/84JGkBCpKCZZruI4NpXokCl8bGHFSQVYQqJt3ibBik3X5UNh3dzbtqqBddDJz/
         Qbxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788427026; x=1789031826;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=MJ21EV3MQMwKYFKEIFBZIDEf60/In3kxMYYbf3aP7SA=;
        b=c10vD8jcVVIEt1J8vMZCpTSpioEoP2FMM6RK3dWh0ZtsDWXJ2oNMyROdLUdUEmqhLx
         Yt+1wTVhvODeG2hiVy6boxbbbGovOQGCi/b3HEx79NlTqOqo9YZJMgBkdlKM3JzdCD2h
         pB9u6FH8wpMHFSzyAq09w8f6w62iDEiUMKMKSYUfqLSvw7gScdOakLRNs6lQvoC8rMbE
         UKzaQnXumYWxhpmgv6C0YDXDnlM4oqFA6CTs8ZabBdb+gm207za2eR7d/JP/8vMHRvbg
         bXW7J1YekE86/31mtzokl2rNDaD2LlOxFKA3VSD/QLxivF0VxPy4RpHdFQjEgm4CiiRZ
         GgSA==
X-Forwarded-Encrypted: i=1; AKwUvBy450udzn3VICb4QVIH41H4Bh+Mu4v7A5N7ihM4Kxv8qV+2y97y2wfm30835iXLXFmHhiEu7hfZFFcuG2IXYw==@lists.infradead.org
X-Gm-Message-State: AFuF++m01qXk2vhNggq2i6O51eJbcTZt0uWxxDQRrLSOTMaa7wQ0q3PC
	HkLqN8xig4U0rPrqhfiBb5aIVHZfe1EHVz3vQUaDYQgQyT0wilHWi4YG
X-Gm-Gg: AYBFou0RdaZQZE6S8JL8tosr48+PxtlkSLGBb5G11X1Q4z9BCx/Xl5m3hHnR0u55bNN
	EGZ22Dklj20atfNu93rYdmCVA0JaYlCxriapBLBPyGegqHcl17wQgM3JDArpwRgz+ZLERG84ZmR
	G0P8dIDf6JJ9DJsvmmzDxTG3Str+hH7JUltBkr6lE4XZ4xBNXYgrRDNXfghfGPPf7ux137baTu7
	8b70BIFvxZTunRPyifjRmCROKM+4A5dEk7Nvv0WDy0VhNSrIZVzEujbrvjnPzxmAvt2b4D+VjZ+
	v/pHRO8S+qk56IDnpMV+hiRCSh4KHdV/RlbIKEkwGHRJgDuBw/MPPXs89SOd2OLSQnVl/ODqSPF
	A2JyAdnbxJ2jGoGNCWxbg87787e17MwcX4gupE/CtS0zxxZ/6KL39slH6wgzz0vVCPUXQDDH/nH
	mlls6ahfxIUw5MqRPy3zS8CIsndrfUVgOTsa1pjfu0/JryE6VFCGqw44ZR2EIaq6BdSTn84CK5i
	Dalw4Tqdpi8L15nyNn509JMqfVgczWCgTS6PELbnbI/FlkiWE4LnQrwJag6dt1C9lNuz82Cy/Hg
	HAg=
X-Received: by 2002:a05:6000:3106:b0:482:ea38:6b80 with SMTP id ffacd0b85a97d-48488f0b107mr9295974f8f.1.1788427026169;
        Thu, 03 Sep 2026 02:17:06 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B8962003434AB95A407E573.dsl.pool.telekom.hu. [2001:4c4e:1b89:6200:3434:ab95:a407:e573])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48448ed3706sm12709656f8f.18.2026.09.03.02.17.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Sep 2026 02:17:05 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Huseyin BIYIK <boogiepop@gmx.com>
Cc: Igor Paunovic <royalnet026@gmail.com>,
	Nicolas Dufresne <nicolas@ndufresne.ca>,
	Tomeu Vizoso <tomeu@tomeuvizoso.net>,
	Heiko Stuebner <heiko@sntech.de>,
	Jiaxing Hu <gahing@gahingwoo.com>,
	Oded Gabbay <ogabbay@kernel.org>,
	Jonas Karlman <jonas@kwiboo.se>,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [RFC] accel/rocket: DVFS on RK3588 - a hardware constraint, and some numbers
Date: Thu,  3 Sep 2026 11:16:37 +0200
Message-ID: <20260903091646.7183-1-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260902110432.22069-1-royalnet026@gmail.com>
References: <20260801131656.58450-1-royalnet026@gmail.com> <ad1e526e-a4cf-4c34-88ff-1884ef2f3dfe@kwiboo.se> <286e8418-fae6-4979-96d1-e13abb04b3a1@kwiboo.se> <3204a0d0-969d-4ac6-adfd-29c57f1c3e0a@kwiboo.se> <20260819125932.5853-1-royalnet026@gmail.com> <82c8b17e-7215-45ea-84d1-9991ba6fb541@kwiboo.se> <20260819184807.6665-1-royalnet026@gmail.com> <f5241666-9657-4f49-958f-476fd366e408@gmx.com> <20260902110432.22069-1-royalnet026@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260903_021708_471969_28BE180F 
X-CRM114-Status: GOOD (  11.83  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Yesterday I wrote:

> My next step is to cherry-pick that commit into my BL31: if EL3
> also reads zero, the silicon answer wins.

Done this morning, and the answer is in: the firewall wins, and
Huseyin called it right.

Setup: d2d6928641ba cherry-picked onto the upstream TF-A v2.12 my
board runs (banner v2.12.0-10-g70d814213 verified over UART after
flashing). With that BL31, clk_get_rate() goes through EL3 reading
the PVTPLL status words directly.

NPU, from EL3: NPUGRF+0x24 reads a real value. clk_get_rate()
returns exactly 1000000000 at the 1 GHz OPP and exactly 700000000
at 700 MHz. At the same moment, the same register read from a
kernel module (EL1) still returns 0x00000000. Same register, same
instant: secure world sees the counter, non-secure gets zeros.
So the counter is alive in silicon, and yesterday's dead end was
the per-ip-core access restriction you suspected - not a missing
clock and not an unbonded counter.

GPU, from EL3, as cross-check under glmark2 load: five consecutive
reads gave 1048, 1053, 1047, 1054, 1049 MHz at the 1000 MHz OPP -
live jitter, matching the 1042 I measured from userspace mmap
yesterday. So EL3 reports raw measurements, which makes the NPU
result the more interesting one:

The NPU PVTPLL apparently LOCKS to its target (readback == nominal
to the MHz, at two operating points), while the GPU one free-runs
about 5% above nominal. Same register layout, same CON2 contents
as far as I can see - do you know what makes the two instances
behave differently?

Practical upshot for this series: with your TF-A commit in BL31,
plain clk_get_rate() gives the kernel measured rates with no GRF
access from the non-secure side at all. That is the clean
telemetry path for rocket DVFS, and one more reason your commit
earns its keep on RK3588.

One honest gap: I could not yet take the voltage-vs-frequency
curve (my devfreq module holds the NPU rail at 850 mV as a
regulator consumer, so undervolting from a second consumer is
refused). Future work.

Igor

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
