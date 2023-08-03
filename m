Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78893C00528
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Aug 2023 11:19:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x1dtwzrrGtWgF/l9zVOGqhjJO8Awn0phFTc3KEfqXik=; b=ZfGa/jZAsmCkoY
	X4C1FS/FOgplSYynsHZGXcyeIb0E8uxbZoCl0kQjsWSSFMUduJbdN3TdMHdOy8lnCmUNoQm7HZkXg
	1eRIbz1ab8NTtzQT2F6fSqF/wdRKmVLy3uTd1d9KjerN9+D9w5W3LJTUupvG2d1idDWBbZXcmueuU
	EvhtXZpKaAD+H3th+/xDV4LsIbKN4NN4qYS19E+8/Ku6Zvn3QUPbCKCFcLoeT4lnzpEkmj4sK53w7
	rGnKX5r6Gfn2YOlB9Ip1EEM7VJcd3OsqEUt2BRW6LUTZZre3LsQEPcqzxK0Txa5UwBlYxl6l5Aodr
	ENRkE8nlz720NFaKEGeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qRWMd-007jgf-0L;
	Thu, 03 Aug 2023 11:19:31 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qRWMZ-007jdc-37
	for linux-rockchip@lists.infradead.org;
	Thu, 03 Aug 2023 11:19:29 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 9B87161D27;
	Thu,  3 Aug 2023 11:19:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CDD08C433C8;
	Thu,  3 Aug 2023 11:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691061566;
	bh=yhIowr8i6QfVKk14MdHInqF6hYvcJbNXDLSBxgbwMPI=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=OK7A0R11P2eqw35fQJAUdM9vmjmVDDtwXB6LIqNr+C/RjCYCrDpVcjcmjkMDCwUWl
	 xZ7F17QdwQ8oq8Bum8dp6fbjHDpAv8RnnxboF/7DTP/1s7TcffeBMp8Ajk/ZYsc4n9
	 qYkA6rog4VSbwIBORLT0ILQE9OG9LCLvu0MUAazV3hpF4UU5cyzX/qBhBkUEMKrcI1
	 AVpudaoYitA+TwumW2e7NRR8vDxlOtcVD87oFRFNAiNkxOP2hGcN8y8HQR+9pmGny7
	 EO8PAlvLwiMjiVmZnCkQQnqlzDhaVX4dwhW1LU43/Cti+iiZNZC2ilwF5kmBU96Tam
	 Ztwa6rfBsJy+w==
Message-ID: <38b2779b-4cb8-3caf-f980-aa656277a7de@kernel.org>
Date: Thu, 3 Aug 2023 13:19:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: [PATCH v3 3/4] dt-bindings: clock: rk3588: export PCLK_VO1GRF clk
 id
To: Elaine Zhang <zhangqing@rock-chips.com>, mturquette@baylibre.com,
 sboyd@kernel.org, kever.yang@rock-chips.com, heiko@sntech.de
Cc: linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, huangtao@rock-chips.com
References: <20230802072038.29996-1-zhangqing@rock-chips.com>
 <20230802072038.29996-4-zhangqing@rock-chips.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzk@kernel.org>
In-Reply-To: <20230802072038.29996-4-zhangqing@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230803_041928_099319_CC6D532F 
X-CRM114-Status: UNSURE (   9.42  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 02/08/2023 09:20, Elaine Zhang wrote:
> add PCLK_VO1GRF clk id.
> 
> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
> ---

v3 and still no improvements:

Please use scripts/get_maintainers.pl to get a list of necessary people
and lists to CC. It might happen, that command when run on an older
kernel, gives you outdated entries. Therefore please be sure you base
your patches on recent Linux kernel.

You missed at least DT list (maybe more), so this won't be tested by
automated tooling. Performing review on untested code might be a waste
of time, thus I will skip this patch entirely till you follow the
process allowing the patch to be tested.

Please kindly resend and include all necessary To/Cc entries.


Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
