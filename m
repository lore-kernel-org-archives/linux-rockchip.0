From: Alper Nebi Yasak <alpernebiyasak@gmail.com>
Subject: Re: [PATCH] ASoC: max98357a: move control of SD_MODE back to DAI ops
Date: Tue, 21 Jul 2020 16:25:11 +0300
Message-ID: <035e41c8-15f9-c4ee-3707-17f3c2819d5c@gmail.com>
References: <20200721114232.2812254-1-tzungbi@google.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <alsa-devel-bounces@alsa-project.org>
In-Reply-To: <20200721114232.2812254-1-tzungbi@google.com>
Content-Language: en-US
List-Unsubscribe: <https://mailman.alsa-project.org/mailman/options/alsa-devel>,
 <mailto:alsa-devel-request@alsa-project.org?subject=unsubscribe>
List-Archive: <http://mailman.alsa-project.org/pipermail/alsa-devel/>
List-Post: <mailto:alsa-devel@alsa-project.org>
List-Help: <mailto:alsa-devel-request@alsa-project.org?subject=help>
List-Subscribe: <https://mailman.alsa-project.org/mailman/listinfo/alsa-devel>,
 <mailto:alsa-devel-request@alsa-project.org?subject=subscribe>
Errors-To: alsa-devel-bounces@alsa-project.org
Sender: "Alsa-devel" <alsa-devel-bounces@alsa-project.org>
To: Tzung-Bi Shih <tzungbi@google.com>, broonie@kernel.org
Cc: linux-rockchip@lists.infradead.org, alsa-devel@alsa-project.org, cychiang@google.com
List-Id: linux-rockchip.vger.kernel.org

On 21/07/2020 14:42, Tzung-Bi Shih wrote:
> This patch addresses the reported issue in the thread
> https://lkml.org/lkml/2020/7/16/427

I can confirm this patch eliminates the pop sounds I mentioned in that
thread. Thanks for working on it.

It looks like toggling "Speaker Switch" during playback doesn't take
effect until playback finishes, but I found that PulseAudio (a version
from a merge request with a custom UCM config) can switch between
Speakers and Headphones immediately, so I don't really think it'll be a
problem.

Tested-By: Alper Nebi Yasak <alpernebiyasak@gmail.com>
